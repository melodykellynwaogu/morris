bot = "Linux"

def message():

    while True:
        name = input("What is your name: ")
        print("Nice to meet you " + name)
        print("What can i do for you today " + name)
        input(" ")
        print(bot + ": Okay let go on.")
        input("")
        print("At least assistable")

message()
print(bot + " We end here, see you next time")    