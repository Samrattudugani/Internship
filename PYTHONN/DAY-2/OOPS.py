# // # OOPS:
# // # object : An object is an instance of a class. It is a self-contained entity that has its own state and behavior. 
# // # An object can represent a real-world entity, such as a person, a car, or a bank account, or it can represent an abstract concept, such as a mathematical function or a data structure.
# // # class : A class is a blueprint for creating objects. It defines the properties and behaviors of the objects that are created from it. The properties are defined as attributes, while the behaviors are defined as methods. A class can also have a constructor method, which is called when an object is created from the class, and it can be used to initialize the attributes of the object.
# // # PS stands for Object-Oriented Programming System. It is a programming paradigm that uses objects and classes to structure code in a way that is more modular, reusable, and easier to maintain.
# // # In OOPS, a class is a blueprint for creating objects, which are instances of the class. A class defines the properties and behaviors of the objects that are created from it. The properties are defined as attributes, while the behaviors are defined as methods.
# // # The main principles of OOPS are:
# // # 1. Encapsulation: This principle states that the data and the methods that operate on that data should be bundled together in a single unit, which is the class. This helps
# // # to protect the data from unauthorized access and modification.
# // # 2. Inheritance: This principle allows a new class to be created from an existing class,
# // # which is called the parent class. The new class, called the
# // # child class, inherits the properties and behaviors of the parent class and can also have its own unique properties and behaviors.
# // # 3. Polymorphism: This principle allows objects of different classes to be treated as if they were of the same class. This is achieved through method overriding, where a child class can provide
# // # a different implementation of a method that is already defined in the parent class.
# // # 4. Abstraction: This principle allows the programmer to focus on the essential features of an object while ignoring the irrelevant details. This is achieved through abstract classes and interfaces, which define a common interface for a group of related classes.
# // # # Example of a class and object in java:
# // class Car {
# //     String brand;
# //     String model;
# //     int year;

# //     // Constructor
# //     Car(String brand, String model, int year) {
# //         this.brand = brand;
# //         this.model = model;
# //         this.year = year;
# //     }

# //     // Method to display car details
# //     void displayDetails() {
# //         System.out.println("Brand: " + brand);
# //         System.out.println("Model: " + model);
# //         System.out.println("Year: " + year);
# //     }
# // }

# exception vs error
# // # In programming, an error is a problem that occurs during the execution of a program, which can cause the program to crash or produce incorrect results. An exception, on the other hand, is a specific type of error that can be handled by the program.
# // # An error is typically caused by a problem in the code, such as a syntax error
# // # or a logical error, while an exception is typically caused by a problem that occurs during the execution of the program, such as a file not found or a division by zero.
# // # In Java, exceptions are represented by the Exception class and its subclasses, while errors are represented by the Error class and its subclasses. Exceptions can be caught and handled using try-catch blocks, while errors cannot be caught and should be allowed to propagate up the call stack.

# // class blue print of object
# // object is an instance of class
# // constructor is a special method that is called when an object is created from a class. 
# // It is used to initialize the attributes of the object and can take parameters to set the initial values of those attributes. 
# // In Java, a constructor has the same name as the class and does not have a return type. 
# // If no constructor is defined in a class, a default constructor is provided by the compiler, 
# // which initializes the attributes to their default values.
# // instance variable is a variable that is defined in a class and is associated with an instance of the class.
# init in python is a special method that is called when an object is created from a class. 
# It is used to initialize the attributes of the object and can take parameters to set the initial values of those attributes. 
# in Python, the init method is defined using the def keyword and has a special name, __init__. 
# The init method is called automatically when an object is created from the class, and it can be used to set the initial state of the object.
# # In Python, the self parameter is a reference to the current instance of the class. It is used to access the attributes and methods of the class within the class definition.
# # The self parameter is typically the first parameter of a method in a class, and it is
# used to differentiate between instance variables and local variables within the method.
# # When a method is called on an object, the self parameter is automatically passed to the method
# as the first argument, allowing the method to access the attributes and methods of the object that called it.   
# simple example of class and object in python:
# class Car:
#     def __init__(self, brand, model, year):
#         self.brand = brand
#         self.model = model
#         self.year = year

#     def display_details(self):
#         print(f"Brand: {self.brand}")
#         print(f"Model: {self.model}")
#         print(f"Year: {self.year}")
# # Creating an object of the Car class
# my_car = Car("Toyota", "Camry", 2020)
# # Calling the method to display car details
# # my_car.display_details()

# class car :
#     def __init__(self,brand,model,year):
#         self.brand = brand
#         self.model = model
#         self.year = year 
#     def display(self):
# #         print(f"bramd: {self.brand}")
# #         print(f"model: {self.model}")
# #         print(f"year: {self.year}")
# # mcar = car("Ren", "modddd", 20033)
# # mcar.display()
# today:
# arg vs parameter 
# return vs print
# types of function
# function with no argument/parameter and no return type
# function with argument and no return type
# function with no argument and return type
# function with argument and return type

# # OOPS:
# class Student:
#     def __init__(self, name, age):
#         self.name = name
#         self.age = age

#     def dog(self):
#         if self.age < 18:
#             print(f"{self.name} is a minor.")   
#         else:
#             print(f"{self.name} is an adult.")

#     def cat(self):
#         if self.age < 18:
#             print(f"{self.name} is a minor.")   
#         else:
#             print(f"{self.name} is an adult.")

# # Creating object
# s1 = Student("Sachin", 23)
# s2 = Student("Rahul", 24)
# # Calling methods
# s1.dog()
# s2.cat()
# PILLARS OF OOPS:
# 1. Encapsulation: This principle states that the data and the methods that operate on
#   that data should be bundled together in a single unit, which is the class. This helps
#   to protect the data from unauthorized access and modification.
# 2. Inheritance: This principle allows a new class to be created from an existing
#   class, which is called the parent class. The new class, called the child class, inherits
#   the properties and behaviors of the parent class and can also have its own unique
#   properties and behaviors.
# 3. Polymorphism: This principle allows objects of different classes to be treated as
#   if they were of the same class. This is achieved through method overriding, where a
#   child class can provide a different implementation of a method that is already defined
#   in the parent class.
# 4. Abstraction: This principle allows the programmer to focus on the essential features
#   of an object while ignoring the irrelevant details. This is achieved through abstract
#   classes and interfaces, which define a common interface for a group of related classes.
# ABC stands for Abstract Base Class. It is a class that cannot
#  be instantiated and is meant to be subclassed. An ABC defines a common interface for a group of related classes, and it can include abstract methods that must be implemented by any concrete subclass. In Python, the abc module provides a way to define abstract base classes and abstract methods using the ABC class and the @abstractmethod decorator.
# # ABSTRACTION EXAMPLE:
# from abc import ABC, abstractmethod

# class Animal(ABC):
#     @abstractmethod
#     def Sound(self):
#         pass

# class Dog(Animal):
#     def Sound(self):
#         print("Woof!")

# class Cat(Animal):
#     def Sound(self):
#         print("Meow!")

# d = Dog()
# d.Sound()

# c = Cat()
# # c.Sound()  

# from abc import ABC, abstractmethod

# class Shape(ABC):
#     @abstractmethod
#     def area(self):
#         pass

# class Circle(Shape):
#     def __init__(self, radius):
#         self.radius = radius

#     def area(self):
#         return 3.14 * self.radius ** 2

# class Rectangle(Shape):
#     def __init__(self, l, b):
#         self.l = l
#         self.b = b

#     def area(self):
#         return self.l * self.b

# c = Circle(5)
# print("Circle Area =", c.area())

# r = Rectangle(4, 5)
# print("Rectangle Area =", r.area())

# class Vehicle:
#     def __init__(self, brand, model):
#         self.brand = brand
#         self.model = model
#     def display_info(self):
#         print(f"Brand: {self.brand}, Model: {self.model}")    

# TYPES OF INHERITANCE:
# 1. Single Inheritance: In single inheritance, a child class inherits from a single parent class. This allows the child class to reuse the properties and behaviors of the parent class while also adding its own unique features.
# 2. Multiple Inheritance: In multiple inheritance, a child class inherits from more than
#    one parent class. This allows the child class to combine the properties and behaviors of multiple parent classes, but it can also lead to ambiguity if there are conflicting attributes or methods in the parent classes.
# 3. Multilevel Inheritance: In multilevel inheritance, a child class inherits from
#    a parent class, which in turn inherits from another parent class. This creates a hierarchy of classes, where each child class can reuse the properties and behaviors of its parent classes.
# 4. Hierarchical Inheritance: In hierarchical inheritance, multiple child classes inherit from a
#    single parent class. This allows the child classes to reuse the properties and behaviors of the parent class while also adding their own unique features.

# ##INHERITANCE EXAMPLE:
# # SIMPLE INHERITANCE EXAMPLE:
# class animal:
#     def __init__(self,name):
#         self.name = name
#     def eat(self):
#         print(f"{self.name} is eating.")
# class dog(animal):
#     def bark(self):
#         print(f"{self.name} is barking.")   
# d = dog("Tommy")
# d.eat() # Output: Tommy is eating.'
# d.bark() # Output: Tommy is barking.' 
 
# # Multilevel Inheritance Example

# class Animal:
#     def __init__(self, name):
#         self.name = name

#     def eat(self):
#         print(f"{self.name} is eating.")

# class Dog(Animal):
#     def bark(self):
#         print(f"{self.name} is barking.")

# class Puppy(Dog):
#     def weep(self):
#         print(f"{self.name} is weeping.")

# p = Puppy("Deekshitha")

# p.eat()
# p.bark()
# p.weep()

# MULTIPLE INHERITANCE EXAMPLE:
# class A:
#     def method_a(self):
#         print("Method A")
# class B:
#     def method_b(self):
#         print("Method B")
# class C(A, B):
#     def method_c(self):
#         print("Method C")
# c = C()
# c.method_a()  # Output: Method A
# c.method_b()  # Output: Method B
# c.method_c()  # Output: Method C

# # Hirarchical Inheritance Example:
# class Animal:
#     def __init__(self, name):
#         self.name = name
#     def eat(self):
#         print(f"{self.name} is eating.")
# class Dog(Animal):
#     def bark(self):
#         print(f"{self.name} is barking.")
# class Cat(Animal):
#     def meow(self):
#         print(f"{self.name} is meowing.")
# d = Dog("Tommy")
# c = Cat("Kitty")
# d.eat()  # Output: Tommy is eating.
# d.bark()  # Output: Tommy is barking.
# c.eat()  # Output: Kitty is eating.
# c.meow()  # Output: Kitty is meowing.

# HYBRID INHERITANCE EXAMPLE:
# class A:
#     def ma(self):

#         print("METHOD A")

# class B(A):
#     def mb(self):
#         print("METHOD B")

# class C(A):
#     def mc(self):
#         print("METHOD C")

# class D(B, C):
#     def md(self):
#         print("METHOD D")

# da = D()

# da.ma()   # From A
# da.mb()   # From B
# da.mc()   # From C
# da.md()   # From D

# ENCAPSUlATION 
# class Bank:
#     def __init__(self, balance):
#         self.__balance = balance   # private variable

#     def show_balance(self):
#         print("Balance:", self.__balance)

# b = Bank(1000)
# b.show_balance() 

# POLYMORPHISM :

# class Dog:
#     def sound(self):
#         print("Bark")

# # class Cat:
# #     def sound(self):
# #         print("Meow")

# # d = Dog()
# # c = Cat()

# # d.sound()
# # c.sound()
# # OVERLOADING no support 
# # OVERRIDING :
# class Animal:
#     def sound(self):
#         print("Animal makes a sound")

# class Dog(Animal):
#     def sound(self):
#         print("Dog barks")

# d = Dog()
# d.sound()
