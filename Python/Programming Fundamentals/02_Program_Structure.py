"""
============================================================
              PYTHON PROGRAM STRUCTURE
============================================================

Author : Hitesh Gopinatha
Chapter: 02 - Program Structure

Description:
This chapter introduces the basic structure of a Python program.
You will learn how to write simple Python programs using
statements, functions, and classes, and how to access Python's
built-in help system.
"""

# ============================================================
# INTRODUCTION
# ============================================================

"""
A Python program is made up of one or more statements that are
executed sequentially from top to bottom.

A typical Python program may contain:

1. Comments
2. Import Statements
3. Variables
4. Functions
5. Classes
6. Main Program Logic

Python programs are easy to read because they use indentation
instead of braces ({ }).
"""

# ============================================================
# FIRST PROGRAM (COMMAND LINE)
# ============================================================

"""
The simplest Python program prints a message to the screen.

Syntax:
"""

print("Hello, World!")

"""
Output

Hello, World!
"""

"""
The print() function is used to display output.

Every executable line in Python is called a statement.
"""

# ============================================================
# USING FUNCTIONS
# ============================================================

"""
A function is a reusable block of code that performs a
specific task.

Functions help reduce code duplication and improve readability.

Syntax

def function_name(parameters):
    statements
    return value
"""

# Example

def greeting():
    return "Hello, World!"

print(greeting())

"""
Output

Hello, World!
"""

# Function with Parameters

def add(a, b):
    return a + b

print(add(2, 3))

"""
Output

5
"""

"""
Explanation

def      → Keyword

add      → Function Identifier

(a, b)   → Parameters

return   → Keyword

2, 3     → Arguments passed during function call
"""

# ============================================================
# USING CLASSES
# ============================================================

"""
A class is a blueprint used to create objects.

Classes allow us to group related variables and methods
together.

Syntax

class ClassName:

    def __init__(self):
        ...

    def method(self):
        ...
"""

# Example

class Display:

    def __init__(self):
        print("Object Created Successfully")

    def add(self, a, b):
        return a + b

    def subtract(self, a, b):
        return a - b


# Creating an Object

obj = Display()

print("Addition :", obj.add(2, 2))
print("Subtraction :", obj.subtract(5, 3))

"""
Output

Object Created Successfully
Addition : 4
Subtraction : 2
"""

# ============================================================
# UNDERSTANDING THE CLASS EXAMPLE
# ============================================================

"""
class
    Keyword used to define a class.

Display
    Class Identifier.

__init__()
    Constructor that is automatically executed
    when an object is created.

self
    Refers to the current object.

add()
subtract()
    Methods (functions inside a class).

obj
    Object of the Display class.

2, 2
    Arguments

a, b
    Parameters

return
    Returns a value back to the caller.
"""

# ============================================================
# IDENTIFYING PROGRAM COMPONENTS
# ============================================================

"""
Example

class Display:

    def add(self, a, b):
        return a + b

Display     → Identifier
class       → Keyword
def         → Keyword
add         → Method Name
self        → Object Reference
a, b        → Parameters
2, 3        → Arguments
+           → Operator
return      → Keyword
"""

# ============================================================
# PYTHON HELP SYSTEM
# ============================================================

"""
Python provides an excellent built-in help system for learning
functions, modules, classes, and methods.
"""

# Display help for a built-in function

help(print)

# Display help for list.append()

help(list.append)

"""
Output

Displays the documentation for the specified object.
"""

# ============================================================
# USING dir()
# ============================================================

"""
dir() displays all available methods and attributes
of an object.
"""

print(dir(list))

"""
Useful for exploring Python objects.
"""

# ============================================================
# USING type()
# ============================================================

"""
type() returns the datatype (class) of an object.
"""

a = 100
b = "Python"

print(type(a))
print(type(b))

"""
Output

<class 'int'>
<class 'str'>
"""

# ============================================================
# HELP IN JUPYTER NOTEBOOK
# ============================================================

"""
Useful Shortcuts

Shift + Tab
    Displays the documentation of a function.

Tab
    Auto-completes variable and function names.

?

Example

list.append?

??

Example

list.append??

The double question mark (??) provides additional
details such as the source code (when available).
"""

# ============================================================
# OFFICIAL PYTHON DOCUMENTATION
# ============================================================

"""
Official Python Documentation

https://docs.python.org/3/

Standard Library Documentation

https://docs.python.org/3/library/

The official documentation is the most reliable source
for learning Python.
"""

# ============================================================
# SUMMARY
# ============================================================

"""
In this chapter you learned:

✔ Structure of a Python Program

✔ Writing a simple program

✔ Creating Functions

✔ Creating Classes

✔ Creating Objects

✔ Constructor (__init__)

✔ Parameters and Arguments

✔ Python Help System

✔ dir()

✔ type()
"""

# ============================================================
# QUIZ
# ============================================================

"""
1. What is the purpose of the print() function?

2. What keyword is used to define a function?

3. What keyword is used to define a class?

4. What is the purpose of __init__()?

5. What is an object?

6. What is the difference between parameters and arguments?

7. What does self represent?

8. Which function displays the datatype of an object?

9. Which function displays documentation for a Python object?

10. Which function lists all available methods of an object?
"""

# ============================================================
# ASSIGNMENT
# ============================================================

"""
1. Write a program that prints your name.

2. Create a function that returns your city name.

3. Create a function to add two numbers.

4. Create a class named Student.

The class should contain:

• __init__()
• display_name()
• display_age()

5. Create an object and call all methods.

6. Use help() on:

• print()
• input()
• str.upper()

7. Use dir() on:

• list
• tuple
• dict

8. Use type() to check the datatype of:

100
100.5
"Python"
True
[1,2,3]
"""

# ============================================================
# RESOURCES
# ============================================================

"""
Official Documentation

https://docs.python.org/3/

Python Standard Library

https://docs.python.org/3/library/

Built-in Functions

https://docs.python.org/3/library/functions.html

Python Tutorial

https://docs.python.org/3/tutorial/