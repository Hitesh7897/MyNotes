"""
============================================================
              FIRST PYTHON PROGRAM
============================================================

Topic  : Writing Your First Python Program

Description:
This chapter introduces the basic structure of a Python program,
different ways to write a simple program, functions, classes,
user input, and displaying output.
"""

# ============================================================
# STRUCTURE OF A PYTHON PROGRAM
# ============================================================

"""
A Python program consists of one or more statements that are
executed sequentially from top to bottom.

General Structure:

1. Comments
2. Import Statements
3. Variables
4. Functions
5. Classes (Optional)
6. Main Program Logic

Example:

# Import libraries
import math

# Variable
name = "John"

# Function
def greet():
    print("Hello")

# Main Program
greet()
"""

# ============================================================
# IMPORTANT NOTES
# ============================================================

"""
✔ Python is a Case-Sensitive language.

Examples:

name = "Python"
Name = "Programming"

These are considered two different variables.

✔ Indentation is mandatory in Python.

✔ Every statement ends with a new line.
Semicolons (;) are optional.
"""

# ============================================================
# FIRST PROGRAM
# ============================================================

"""
The first program traditionally prints:

Hello, World!
"""

# Using print()

print("Hello, World!")

"""
Output

Hello, World!
"""

"""
Python 2 Syntax (No longer recommended)

print "Hello, World"

Python 3 Syntax (Current)

print("Hello, World")
"""

# ============================================================
# FIRST PROGRAM USING A FUNCTION
# ============================================================

"""
Functions help organize reusable code.
"""

def display():
    return "Hello, World!"

print(display())

"""
Output

Hello, World!
"""

# ============================================================
# FIRST PROGRAM USING A CLASS (OOP)
# ============================================================

"""
Everything in Python is an object.

A class is a blueprint for creating objects.
"""

class Display:

    def __init__(self):
        print("Hello, World!")

    def add(self):
        return 3 + 4


# Create an object
obj = Display()

# Call the method
print(obj.add())

"""
Output

Hello, World!
7
"""

# ============================================================
# FUNCTION VS CLASS
# ============================================================

"""
Functions perform a specific task.

Classes group together variables and functions (methods)
into a single unit.
"""

# Function Example

def greet():
    return "Hello"


# Class Example

class Demo:

    def greet(self):
        return "Hello"

# ============================================================
# HOW TO IDENTIFY A FUNCTION OR AN OBJECT
# ============================================================

"""
Python provides two useful built-in functions:

type()
callable()
"""

# Example 1

def display():
    return "Hello World"

print(type(display))
print(callable(display))

"""
Output

<class 'function'>
True

Explanation:

display is a function, so it is callable.
"""

# Example 2

b = display()

print(b)
print(type(b))
print(callable(b))

"""
Output

Hello World
<class 'str'>
False

Explanation:

display() returns a string.

The returned string is not callable.
"""

# ============================================================
# WHAT IS callable()?
# ============================================================

"""
callable(object)

Returns:

True  -> if the object can be called
False -> otherwise

Callable objects include:

• Functions
• Methods
• Classes
"""

# Example

print(callable(print))
print(callable(str))
print(callable(10))

"""
Output

True
True
False
"""

# ============================================================
# WHAT IS type()?
# ============================================================

"""
type(object)

Returns the datatype (class) of an object.
"""

a = 10
b = 10.5
c = "Python"

print(type(a))
print(type(b))
print(type(c))

"""
Output

<class 'int'>
<class 'float'>
<class 'str'>
"""

# ============================================================
# USER INPUT
# ============================================================

"""
The input() function accepts data from the user.

Syntax:

variable = input("Message")
"""

name = input("Enter your name: ")

print("Welcome", name)

"""
Sample Output

Enter your name: John
Welcome John
"""

# ============================================================
# INPUT OF NUMBERS
# ============================================================

"""
input() always returns a string.

Convert it when numerical operations are required.
"""

num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))

print("Sum =", num1 + num2)

"""
Sample Output

Enter first number: 10
Enter second number: 20

Sum = 30
"""

# ============================================================
# DISPLAYING MULTIPLE VALUES
# ============================================================

a = 12
b = 18
c = 23

print(a, b, c)

"""
Output

12 18 23
"""

# Custom Separator

print(a, b, c, sep=" - ")

"""
Output

12 - 18 - 23
"""

# Custom End Character

print(a, end=" ")
print(b, end=" ")
print(c)

"""
Output

12 18 23
"""

# ============================================================
# SUMMARY
# ============================================================

"""
In this chapter, you learned:

✔ Structure of a Python program

✔ Python is case-sensitive

✔ Printing output using print()

✔ Creating functions

✔ Creating classes and objects

✔ Difference between functions and classes

✔ Using type()

✔ Using callable()

✔ Accepting user input with input()

✔ Displaying multiple values using print()
"""

# ============================================================
# QUIZ
# ============================================================

"""
1. Is Python a case-sensitive language?

2. Which function is used to display output?

3. Which function is used to accept user input?

4. What does type() return?

5. What does callable() return?

6. What is the difference between a function and a class?

7. What datatype does input() return?

8. Write a program that prints "Hello, World!"

9. Which keyword is used to define a function?

10. Which keyword is used to define a class?
"""

# ============================================================
# ASSIGNMENT
# ============================================================

"""
1. Write a program that prints your name.

2. Write a function that returns your favorite color.

3. Create a class named Student that prints your name.

4. Accept two numbers from the user and display:

    • Sum
    • Difference
    • Product
    • Division

5. Use type() to check the datatype of:

    100
    10.5
    "Python"
    True

6. Use callable() to check whether the following are callable:

    print
    len
    input
    "Hello"
    100
"""