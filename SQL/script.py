# bot = "Linux"

# def message():

#     while True:
#         name = input("What is your name: ")
#         print("Nice to meet you " + name)
#         print("What can i do for you today " + name)
#         input(" ")
#         print(bot + ": Okay let go on.")
#         input("")
#         print("At least assistable")

# message()
# print(bot + " We end here, see you next time")    


# food = "ice cream"
# money = 2000


# height = 2000
# height = height + 50
# print(height)

# name = "bob"
# hungry = True
# if name == "bob" and hungry == True:
#     print("bob is hungry")
# elif name == "bob" and hungry == False:
#     print("bob is not hungry")
# else:
#     print("Not sure who is bob and if he is hungry or not")


# age = 17
# if age > 18:
#     print("You'er are old enough to drive")
# else:
#     print("You are not old enough to drive stop")



# """
#     In this project, you'll create a program that calculates the total
#     cost of a customers shopping basket, including shipping.

#     - If a customer spends over $100, they get free shipping
#     - If a customer spends < $100, the shipping cost is $1.20 per kg of the baskets weight

#     Print the customers total basket cost (including shipping) to complete this exercise.


# shipping_cost_per_kg = 1.20
# customer_basket_cost = 34
# customer_basket_weight = 44

# if customer_basket_cost > 100:
#     total_cost = customer_basket_cost
# else:
#     shipping_cost = customer_basket_weight * shipping_cost_per_kg
#     total_cost = customer_basket_cost + shipping_cost

# print(total_cost)

# website = ["facebook.com", "google.com", "amazon.com"]
# for site in website:
#     print(site)

# i = 1
# while i <= 20:
#     print(i)
#     i = i + 1


# def calcCost(item):
#     if (item) == "sweets":
#         return 3.99
#     elif (item) == "oranges":
#         return 1.99
#     else:
#         return 0.99

# spent = 10
# spent = spent + calcCost("sweets")
# print("You have spent: $" + str(spent) + " on your shopping items")



# """
#     In this project, you'll create a program that that tells
#     you when the value of your Bitcoin falls below $30,000.

#     You will need to:
#     - Create a function to convert Bitcoin to USD
#     - If your Bitcoin falls below $30,000, print a message.

#     You can assume that 1 Bitcoin is worth $40,000

# investment_in_bitcoin = 1.2
# bitcoin_to_usd = 40000


# # 1) Function to convert Bitcoin to USD
# def bitcoinToUSD(bitcoin_amount, bitcoin_value_usd):
#     usd_value = bitcoin_amount * bitcoin_value_usd
#     return usd_value


# # 2) Use function to calculate total USD value
# total_value_usd = bitcoinToUSD(investment_in_bitcoin, bitcoin_to_usd)

# # 3) Check if investment is below $30,000
# if total_value_usd < 30000:
#     print("Alert: Your Bitcoin value has fallen below $30,000!")
#     print("Current value in USD:", total_value_usd)
# else:
#     print("Your Bitcoin value is above $30,000.")
#     print("Current value in USD:", total_value_usd)



# f = open("text.txt", "a")
# f.write("The file will include more text....")
# f.close()

# f = open("demofile2.txt", "w")
# f.write("demofile2 file created, with this content in!")
# f.write("This is the second line of the file, a third will be added soon!")
# f.close() 

f = open("demofile2.txt", "r")
print(f.read())

import datetime
current_time = datetime.datetime.now()
print(current_time)
