import socket
import string

HOST = "10.49.164.91"  
PORT = 1337

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))

# 1. Receive initial banner
data = s.recv(4096).decode()
print(data)

# 2. Extract hex ciphertext
hex_str = data.split("flag 1: ")[1].split("\n")[0].strip()
ciphertext = bytes.fromhex(hex_str)

# 3. Recover first 4 chars of key using known prefix 'THM{'
known_prefix = b"THM{"
key_bytes = bytearray(5)

for i in range(4):
    key_bytes[i] = ciphertext[i] ^ known_prefix[i]

# 4. Find the exact 5th key character by checking ALL positions using index 4
valid_key_chars = (string.ascii_letters + string.digits).encode()
allowed_flag_chars = set((string.ascii_letters + string.digits + "_{}").encode())

for char in valid_key_chars:
    # Test if 'char' produces valid flag characters across all index 4 repeats (4, 9, 14, 19...)
    is_valid = True
    for idx in range(4, len(ciphertext), 5):
        decrypted_byte = ciphertext[idx] ^ char
        if decrypted_byte not in allowed_flag_chars:
            is_valid = False
            break
    if is_valid:
        key_bytes[4] = char
        break

key = key_bytes.decode()
print(f"[*] Recovered Encryption Key: {key}")

# 5. Decrypt Flag 1
flag1 = "".join(chr(ciphertext[i] ^ key_bytes[i % 5]) for i in range(len(ciphertext)))
print(f"[*] Flag 1: {flag1}\n")

# 6. Send key to claim Flag 2
s.sendall((key + "\n").encode())
response = s.recv(4096).decode()
print(f"[*] Server Response:\n{response}")

s.close()