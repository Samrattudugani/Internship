# LIST DEFINITIONS
# 1. A list is a collection of items which is ordered and changeable. In Python,
# lists are written with square brackets [].
# 2. Lists can contain items of different types, such as integers, strings, and
# even other lists.
# 3. Lists are mutable, which means that you can change their content after they
# have been created.
# ARRAY DEFINITIONS:
# 1. An array is a collection of items which is ordered and changeable. In Python,
# arrays are implemented using the built-in list data type.
# 2. Arrays can contain items of the same type, such as integers or strings.
# 3. Arrays are mutable, which means that you can change their content after they
# LIST EXAMPLE:
# list = [1,"a", "asd", 2.5, 6]
# print(list)
# DICTONARY definitions:
# # 1. A dictionary is a collection of key-value pairs which is unordered and changeable
# # 2. Dictionaries are written with curly brackets {} and have keys and values.
# # 3. Dictionaries are mutable, which means that you can change their content after they have
# # been created.
# # DICTONARY EXAMPLE:
# dict = {"name": "RAM", "age": 25, "city": "New York"}
# # print(dict)
# want only mark of one student using dictionary
# student_marks = {"Alice": 85, "Bob": 90, "Charlie": 78}
# print(student_marks["Alice"])  # Output: 85
# Nested dictionary example:
# students = {
#     "Alice": {"age": 25, "marks": 85},
#     "Bob": {"age": 22, "marks": 90},
#     "Charlie": {"age": 23, "marks": 78}
# }   
# print(students["Alice"]["marks"])  # Output: 85
# # loops in dictionary:
# student_marks = {"Alice": 85, "Bob": 90, "Charlie": 78}
# for student in student_marks:
#     print(student)  # Output: Alice, Bob, Charlie
# for student in student_marks:
#     print(student_marks[student])  # Output: 85, 90, 78
# for student, marks in student_marks.items():
#     print(f"{student}: {marks}")  # Output: Alice: 85, Bob: 90, Charlie: 78
# CALCULATE MARKS AND GRADES USING FUNCTION :
# students = {
#     "Alice":{"math":85, "science":90}, 
#     "Bob": {"math":90, "science":85}, 
#     "Charlie": {"math":78, "science":82}
# }
# avg = 0
# def calculate_average(student):
#     marks = students[student]
#     tm = marks["math"],marks["science"]
#     avg = sum(tm) / len(tm)
#     return avg 
# for student in students:
#     average = calculate_average(student)
#     print(f"{student}: {average}")
#     grade = ""
#     if average >= 90:
#         grade = "A"
#     elif average >= 80:
#         grade = "B"
#     elif average >= 70:
#         grade = "C"
#     elif average >= 60:
#         grade = "D" 
# #     else:
# #         grade = "F"
# #     print(f"{student}: {grade}")

# def vowel(str):
#     c = 0
#     for i in str:
#         if i in "aeiouAEIOU":
#             c+=1
# #     return c
# # str = input()
# # print(vowel(str))

# #REverse a string using function:
# def reverse_string(str):
#     rs = ""
#     for i in str:
#         rs = i + rs
#     return rs 
# str = input()
# print(reverse_string(str))
