"""
============================================================
                    PYTHON VARIABLES
============================================================

Author : Hitesh Gopinatha
Chapter: 03 - Variables

Description:
This chapter explains variables, variable declaration,
assignment, naming conventions, variable scope, and literals
in Python.
"""

# ============================================================
# INTRODUCTION
# ============================================================

"""
A variable is a name that refers to a value stored in memory.

Variables allow us to store data so that it can be reused
throughout a program.

Python variables are also known as identifiers.

Unlike many programming languages, Python does not require
you to declare the datatype of a variable explicitly.
The datatype is determined automatically based on the assigned
value.

This feature is called Dynamic Typing.

Example
"""

name = "John"
age = 25
salary = 50000.75

print(name)
print(age)
print(salary)

# ============================================================
# VARIABLE DECLARATION
# ============================================================

"""
Python does not require explicit variable declaration.

A variable is created automatically when a value is assigned.

Example
"""

x = 10

print(x)

"""
Python is dynamically typed.

The same variable can store different datatypes.
"""

x = 10
print(type(x))

x = "Python"
print(type(x))

x = 10.5
print(type(x))

# Memory Address

print(id(x))

"""
Useful Functions

type()  -> Returns the datatype

id()    -> Returns the memory address (identity)

print() -> Displays output
"""

# ============================================================
# TYPE HINTING (OPTIONAL)
# ============================================================

"""
Modern Python (3.5+) supports Type Hinting.

Type hints improve code readability and editor support.

Example
"""

name: str = "Alice"
age: int = 25
price: float = 150.75

print(name)

"""
Type hints do NOT enforce the datatype at runtime.
"""

# ============================================================
# PROS AND CONS OF DYNAMIC TYPING
# ============================================================

"""
Advantages

✔ Easy to learn
✔ Less code
✔ Faster development
✔ Flexible

Disadvantages

✘ Runtime errors due to incorrect datatypes
✘ Harder to detect bugs in large projects

Always use:

type()

when debugging.
"""

# ============================================================
# ASSIGNING VALUES TO VARIABLES
# ============================================================

"""
The assignment operator (=) assigns values to variables.

Evaluation occurs from right to left.
"""

a = 10
print(a)

a = 10.88
print(a)

b = False
print(b)

c = "Ravi"
print(c)

a = a + 3

print(a)

# ============================================================
# MULTIPLE ASSIGNMENT
# ============================================================

"""
Assign one value to multiple variables.
"""

x = y = z = 5

print(x)
print(y)
print(z)

"""
Assign multiple values simultaneously.
"""

a, b, c = 3, 4, 5

print(a)
print(b)
print(c)

"""
Swap two variables.
"""

a = 10
b = 20

a, b = b, a

print(a)
print(b)

# ============================================================
# VARIABLE NAMING CONVENTIONS
# ============================================================

"""
Rules

1. Cannot start with a number.

✔ age
❌ 1age

2. Cannot contain spaces.

✔ student_name
❌ student name

3. Cannot contain special characters.

✔ marks
❌ marks@

4. Cannot use Python keywords.

✔ total
❌ class

5. Variable names are case-sensitive.

name
Name
NAME

All are different variables.
"""

"""
PEP 8 Recommendations

✔ Use lowercase names.

student_name

employee_salary

total_marks

✔ Use meaningful names.

Bad

a
x

Good

student_age
total_price
"""

# ============================================================
# VARIABLE SCOPE
# ============================================================

"""
Scope defines where a variable can be accessed.

Python follows the LEGB Rule.

L -> Local
E -> Enclosing
G -> Global
B -> Built-in
"""

# ============================================================
# LOCAL SCOPE
# ============================================================

def local_example():
    x = 100
    print(x)

local_example()

# print(x)   # NameError

"""
Local variables exist only inside the function.
"""

# ============================================================
# GLOBAL SCOPE
# ============================================================

message = "Welcome"

def display():
    print(message)

display()

print(message)

"""
Global variables can be accessed throughout the program.
"""

# ============================================================
# ENCLOSING SCOPE
# ============================================================

def vehicle():

    engine = "Started"

    def car():
        print(engine)

    car()

vehicle()

"""
engine belongs to the enclosing scope.
"""

# ============================================================
# BUILT-IN SCOPE
# ============================================================

a = 5.5

print(int(a))
print(type(a))
print(len("Python"))

"""
Functions such as:

print()
len()
int()
str()
list()

belong to Python's built-in scope.
"""

# ============================================================
# LITERALS
# ============================================================

"""
A Literal is a fixed value assigned to a variable.

Python supports:

1. Numeric Literals
2. String Literals
3. Boolean Literals
4. None Literal
5. Collection Literals
"""

# ============================================================
# NUMERIC LITERALS
# ============================================================

binary = 0b1010
decimal = 100
octal = 0o310
hexadecimal = 0x12C

print(binary)
print(decimal)
print(octal)
print(hexadecimal)

"""
Floating Point Literals
"""

float1 = 10.5
float2 = 1.5e2

print(float1)
print(float2)

"""
Complex Numbers
"""

x = 3 + 4j

print(x)

print(x.real)
print(x.imag)

# ============================================================
# STRING LITERALS
# ============================================================

name = "Python"

print(name)

"""
Strings can be written using:

'Single Quotes'

"Double Quotes"

'''Triple Single Quotes'''

\"\"\"Triple Double Quotes\"\"\"
"""

# ============================================================
# BOOLEAN LITERALS
# ============================================================

is_valid = True
is_completed = False

print(is_valid)
print(is_completed)

# ============================================================
# NONE LITERAL
# ============================================================

result = None

print(result)

"""
None represents the absence of a value.
"""

# ============================================================
# COLLECTION LITERALS
# ============================================================

fruits = ["Apple", "Mango", "Orange"]

numbers = (1, 2, 3)

student = {
    "name": "John",
    "age": 22
}

vowels = {"a", "e", "i", "o", "u"}

print(fruits)
print(numbers)
print(student)
print(vowels)

"""
These data structures will be covered in later chapters.
"""

# ============================================================
# SUMMARY
# ============================================================

"""
In this chapter you learned:

✔ Variables

✔ Dynamic Typing

✔ Variable Assignment

✔ Multiple Assignment

✔ Type Hinting

✔ Naming Conventions

✔ Variable Scope (LEGB)

✔ Literals

✔ Numeric Literals

✔ String Literals

✔ Boolean Literals

✔ None Literal

✔ Collection Literals
"""

# ============================================================
# QUIZ
# ============================================================

"""
1. What is a variable?

2. What is Dynamic Typing?

3. What does type() return?

4. What does id() return?

5. Explain Multiple Assignment.

6. What are the four scopes in Python?

7. What is the LEGB Rule?

8. What is a Literal?

9. Name the five types of Literals.

10. What does None represent?
"""

# ============================================================
# ASSIGNMENT
# ============================================================

"""
1. Create variables to store:

    • Name
    • Age
    • Salary
    • Country

2. Print the datatype of each variable.

3. Print the memory address using id().

4. Swap two variables without using a third variable.

5. Write examples of:

    • Integer
    • Float
    • Complex
    • Boolean
    • None
    • List
    • Tuple
    • Dictionary
    • Set

6. Write one example each for:

    • Local Scope
    • Global Scope
    • Enclosing Scope
    • Built-in Scope

7. Create meaningful variable names following PEP 8.
"""

# ============================================================
# RESOURCES
# ============================================================

"""
Official Documentation

https://docs.python.org/3/reference/simple_stmts.html

PEP 8 Naming Convention

https://peps.python.org/pep-0008/

Variable Scope

https://docs.python.org/3/tutorial/classes.html#python-scopes-and-namespaces
"""