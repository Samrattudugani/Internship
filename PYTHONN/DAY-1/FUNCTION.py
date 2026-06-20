#function defination it is a block of code which is used to perform a specific task. 
# It is reusable and can be called multiple times in a program. 
# In Python, functions are defined using the 'def' keyword followed by the function name and parentheses. The code block within the function is indented.
#diff between arg and parameter
# # # parameter is a variable in the declaration of function. It is a placeholder for the value that        
# # will be passed to the function when it is called. Argument is the actual value that is passed to the function when it is called. In other words, parameters are used in the function definition, while arguments are used in the function call.
# # arg is the value that is passed to the function when it is called, while parameter is the variable that is defined in the function definition to receive the value of the argument. For example, in the function definition 'def add(a, b):', 'a' and 'b' are parameters, while in the function call 'add(2, 3)', '2' and '3' are arguments.
# add is a function that takes two parameters, 'a' and 'b', and returns their sum. The function can be defined as follows:
# ADDITION OF TWO NUMBERS USING FUNCTION
# def add(a, b):
#     return a + b
# # To call the function, you can pass the arguments as follows:
# result = add(2, 3)
# print(result)  # Output: 5
# Without function:
# a = 2
# b = 3       
# result = a + b
# print(result)  # Output: 5
# diff between return and print
# The 'return' statement is used to exit a function and return a value to the caller
# while the 'print' statement is used to display output to the console. 
# The 'return' statement allows you to pass a value back to the caller, which can be stored in a variable or used in further calculations. 
# The 'print' statement simply outputs the value to the console and does not affect the flow of the program. 
# SUB WITH RETURN
# a = 5 
# b = 6
# def sub(a, b):
#     return a - b
# result = sub(a, b)
# print(result)  # Output: -1
# SUB WITHOUT RETURN
# a = 5 
# b = 6
# def sub(a, b):
#     print(a - b)
# sub(a, b)  # Output: -1
# Types of functions:
# 1. Built-in functions: These are functions that are provided by the Python language itself, such 
#    as 'print()', 'len()', 'input()', etc. They are readily available for use without the need for any additional code.
# 2. User-defined functions: These are functions that are created by the user to perform specific tasks. 
# They are defined using the 'def' keyword and can be called multiple times in a program.
# 3. Lambda functions: These are anonymous functions that are defined using the 'lambda' keyword.
#  They are typically used for short, simple functions that can be defined in a single line of code.
# 4. Recursive functions: These are functions that call themselves in order to solve a problem. 
# They typically have a base case that stops the recursion and a recursive case that continues to call the function until the base case is reached.
# 5. Generator functions: These are functions that use the 'yield' keyword to produce a sequence of values.
#  They are used to create iterators and can be more memory-efficient than traditional functions that return a list of values.
#1. function with no argument/parameter and no return type
# def greet():
#     print("Hello, World!")
# greet()  # Output: Hello, World!
# #2. function with argument and no return type
# def greet(name):
#     print(f"Hello, {name}!")
# greet("Alice")  # Output: Hello, Alice!
# #3. function with no argument and return type
# def get_greeting():
#     return "Hello, World!"
# greeting = get_greeting()
# print(greeting)  # Output: Hello, World!
# #4. function with argument and return type
# def greet(name):
#     return f"Hello, {name}!"
# greeting = greet("Alice")
# print(greeting)  # Output: Hello, Alice!
# +
# # for adding two numbers
# # 1. function with no argument/parameter and no return type
# def add():
#     a = 2
#     b = 3
#     print(a + b)
# add()  # Output: 5
# # 2. function with argument and no return type
# def add(a, b):
#     print(a + b)
# add(2, 3)  # Output: 5
# # 3. function with no argument and return type
# def add():
#     a = 2
#     b = 3
#     return a + b
# result = add()
# print(result)  # Output: 5
# # 4. function with argument and return type
# def add(a, b):
#     return a + b
# result = add(2, 3)
# print(result)  # Output: 5
# REUSABLE OF LOGIC
# def calculate_area(radius):
#     area = 3.14 * radius ** 2
#     return area
# radius1 = 5
# radius2 = 10
# area1 = calculate_area(radius1)
# area2 = calculate_area(radius2)
# print(f"Area of circle with radius {radius1}: {area1}")
# print(f"Area of circle with radius {radius2}: {area2}")
# def largest(a,b):
#     if a > b:
#         return a
#     else:
#         return b
# a = 10
# b = 20
# print(largest(a,b))  # Output: 20

# def ev_od(a,b):
#     if a % 2 == 0 and b % 2 == 0:
#         return "Both are even"
#     elif a %  2 == 0 and b % 2 != 0:
# #         return "a is even and b is odd"
# #     elif a % 2 != 0 and b % 2 == 0:
# #         return "a is odd and b is even"
# #     else:
# #         return "Both are odd" 
# # a = int(input())
# # b = int(input())
# # print(ev_od(a,b))
# #SQUARE OF A NUM:
# def sq(num):
#     return num ** 2
# num = int(input())
# print(sq(num))
# ## SIMPLE INTREST
# def s_i(p,r,t):
#     return (p*r*t)/100
# p = int(input())
# r = int(input())
# t = int(input())
# print(s_i(p,r,t))
