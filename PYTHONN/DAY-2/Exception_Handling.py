# # n = 10
# # res = 10 / 0
# # print (res) # ZERODIVISIONERROR 
# # n = int(input())
# # res = n/0
# # print(res) # VALUE ERROR if n = a

# # n = "samrat" + 20 
# # print(n) #TYPE ERROR 

# # n = [1,2,3,4]
# # print(n[9]) #LIST INDEX OUT OF ERROR 

# Types of Errors in Python

# Python errors are mainly divided into 3 types:

# 1. Syntax Errors

# These occur when Python rules (syntax) are violated.

# Example
# if 5 > 2
#     print("Hello")
# Output
# SyntaxError: expected ':'

# Reason: Missing : after the if statement.

# 2. Runtime Errors (Exceptions)

# These occur while the program is running.

# Example 1: ZeroDivisionError
# a = 10
# b = 0
# print(a / b)
# Output
# ZeroDivisionError: division by zero

# Example 2: ValueError
# num = int("abc")
# Output
# ValueError: invalid literal for int()

# Common Runtime Errors

# ZeroDivisionError
# ValueError
# TypeError
# NameError
# IndexError
# KeyError
# FileNotFoundError

# 3. Logical Errors
 # The program runs without errors, but gives the wrong output.

# Example
# a = 10
# b = 20
# print("Sum =", a - b)
# Output
# Sum = -10

# Reason: Used - instead of +.

# Correct code:

# print("Sum =", a + b)

# Output:

# Sum = 30

# #EXCEPTION HANDLINGG:
# # Exception handling in Python is used to manage runtime errors so your program doesn’t crash unexpectedly. Instead, you can handle errors gracefully and keep control of the flow.

# # 🔹 Basic Syntax
# try:
#     # code that may cause an error
#     x = int(input("Enter a number: "))
# except:
#     # runs if an error occurs
#     print("Invalid input")
# 🔹 Handling Specific Exceptions

# # You can catch specific errors instead of all errors:

# try:
#     a = int(input("Enter a number: "))
#     b = int(input("Enter another number: "))
#     print(a / b)
# except ValueError:
#     print("Please enter valid integers")
# except ZeroDivisionError:
#     print("Cannot divide by zero")
# 🔹 Using else and finally
# try:
#     num = int(input("Enter a number: "))
# except ValueError:
#     print("That's not a number")
# else:
#     print("You entered:", num)   # runs if no error
# finally:
#     print("Execution completed")  # always runs
# 🔹 Raising Exceptions

# # You can manually raise exceptions using raise:

# age = int(input("Enter age: "))

# if age < 0:
#     raise ValueError("Age cannot be negative")
# 🔹 Custom Exceptions
# class CustomError(Exception):
#     pass

# try:
#     raise CustomError("This is a custom error")
# except CustomError as e:
#     print(e)
#### EXAMLES @###########
# 1.
# try:
#     a = int(input())
#     b = int(input())
#     print(a / b)
# except ZeroDivisionError:
#     print("Cannot divide by zero")

# #2.
# try:
#     n = int(input())
#     print(n) 
# except ValueError:
#     print("GIVE ONLY NUMBERS")

# 3.
# try:
#     l = [1,3,44,555,6666]
#     n = int(input())
#     print(l[n])
# except IndexError:
#     print("INDEX OUT OF RANGE")
 
# # 4.
# try:
#     print(x)
# except NameError:
#     print("variable is not defined")

#5.
# try:
#     n = int(input("Enter a number: "))
# except ValueError:
#     print("Invalid input")
# else:
#     print("You entered:", n)
# finally:
#     print("Program ended")

#### ALL  IN  ONE  ERRORS PROGRAM #############################

# try:
#     a = int(input("Enter first number: "))
#     b = int(input("Enter second number: "))

#     result = a / b
#     print("Result =", result)

#     lst = [10, 20, 30]
#     print(lst[5])

#     print(x)

# except ValueError:
#     print("ValueError: Please enter valid integers")

# except ZeroDivisionError:
#     print("ZeroDivisionError: Cannot divide by zero")

# except IndexError:
#     print("IndexError: List index out of range")

# except NameError:
#     print("NameError: Variable is not defined")

# except Exception as e:
#     print("Some other error occurred:", e)

# finally:
#     print("Program execution completed")  

##### NESTED TRY ##########################################
# try:
#     b = int(input())
#     try:
#         a = int(input("Enter a number: "))
#         print(10 / a)
#         print(a/b)

#     except ZeroDivisionError:
#         print("Division by zero")

# except ValueError:
#     print("Invalid input")