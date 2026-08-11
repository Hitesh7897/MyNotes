"""
============================================================
               PYTHON FUNDAMENTALS
============================================================

Author : Hitesh Gopinatha
Chapter: 01 - Python Fundamentals

Description:
This chapter introduces the fundamental building blocks of
Python programming, including tokens, comments, statements,
indentation, expressions, and syntax.
"""

# ============================================================
# WHAT ARE TOKENS?
# ============================================================

"""
A Token is the smallest meaningful unit in a Python program.

Think of a sentence:

    "Python is awesome."

It is made up of words.

Similarly, a Python program is made up of tokens.

Python Tokens include:

1. Keywords
2. Identifiers
3. Literals
4. Operators
5. Delimiters (punctuators)
"""

# Example

age = 25

"""
Tokens in the above statement:

age     -> Identifier
=       -> Operator
25      -> Literal
"""

# ============================================================
# KEYWORDS
# ============================================================

"""
Keywords are reserved words that have predefined meanings
in Python.

They cannot be used as variable names,
function names, or class names.
"""

import keyword

print(keyword.kwlist)

"""
Examples of Keywords

True
False
None
if
else
elif
for
while
break
continue
return
def
class
try
except
finally
with
lambda
import
from
global
nonlocal
pass
yield
async
await
"""

# Invalid Example

# class = 10      ❌
# for = 20        ❌

# ============================================================
# IDENTIFIERS
# ============================================================

"""
Identifiers are names given to:

• Variables
• Functions
• Classes
• Modules
• Objects

They help identify program elements.
"""

# Valid Identifiers

student_name = "John"
_age = 25
marks1 = 90

# Invalid Identifiers

# 1student = "John"
# my-name = "John"
# class = "Python"

"""
Rules for Naming Identifiers

1. Must begin with a letter or underscore (_).

✔ student
✔ _student

2. Remaining characters may contain:

• Letters
• Numbers
• Underscores

✔ student1
✔ student_name

3. Cannot contain spaces.

❌ student name

4. Cannot contain special characters.

❌ student@name

5. Cannot use Python keywords.

❌ class
❌ for

6. Python identifiers are Case Sensitive.

name
Name
NAME

These are three different identifiers.
"""

"""
Best Practices

✔ Use meaningful names

Good

total_marks
student_name

Bad

a
x
abc

✔ Use snake_case

student_name
employee_salary
total_price
"""

# ============================================================
# LITERALS
# ============================================================

"""
A Literal is a fixed value assigned to a variable.

Types of Literals

1. Numeric Literals
2. String Literals
3. Boolean Literals
4. None Literal
5. Collection Literals
"""

# Numeric

age = 25
price = 99.99
complex_num = 3 + 4j

# String

name = "Python"

# Boolean

is_valid = True

# None

result = None

# Collection

numbers = [1, 2, 3]
colors = ("Red", "Blue")
student = {"name": "John", "age": 20}
languages = {"Python", "Java"}

"""
These topics will be covered in detail
in later chapters.
"""

# ============================================================
# OPERATORS
# ============================================================

"""
Operators perform operations on values.

Examples

Arithmetic

+
-
*
/
%
**
//

Comparison

==
!=
>
<
>=
<=

Logical

and
or
not

Assignment

=
+=
-=

Membership

in
not in

Identity

is
is not
"""

print(5 + 5)

"""
Output

10
"""

# ============================================================
# COMMENTS
# ============================================================

"""
Comments help explain code.

The Python interpreter ignores comments.

Comments improve readability and maintenance.
"""

# ============================================================
# SINGLE-LINE COMMENTS
# ============================================================

# This is a comment

print("Hello World")

# ============================================================
# MULTI-LINE COMMENTS
# ============================================================

# This is line one
# This is line two
# This is line three

print("Hello")

"""
Although triple quotes can be used as multi-line strings,
many developers also use them as block comments.
"""

"""
This is
a multi-line
comment.
"""

# ============================================================
# DOCSTRINGS
# ============================================================

"""
Docstrings are documentation strings.

They describe:

• Modules
• Classes
• Functions
• Methods
"""

def double(num):
    """Returns double the given number."""
    return num * 2

print(double.__doc__)

"""
Output

Returns double the given number.
"""

# ============================================================
# WRITING GOOD COMMENTS
# ============================================================

"""
Good Practices

✔ Explain WHY, not WHAT.

✔ Keep comments short.

✔ Update comments when code changes.

✔ Use meaningful variable names
instead of excessive comments.

Bad

# Increment i
i = i + 1

Good

# Move to the next student
student_index += 1
"""

# ============================================================
# STATEMENTS
# ============================================================

"""
A Statement is an instruction
that Python executes.

Examples

Assignment Statement

a = 10

Print Statement

print(a)

Conditional Statement

if a > 5:
    print("Greater")

Loop Statement

for i in range(5):
    print(i)
"""

# ============================================================
# MULTI-LINE STATEMENTS
# ============================================================

total = (
    1 + 2 + 3 +
    4 + 5 + 6 +
    7 + 8 + 9
)

print(total)

colors = [
    "Red",
    "Blue",
    "Green"
]

"""
Multiple statements can also be written
on one line using semicolons.

Example

a = 1; b = 2; c = 3

However, this is NOT recommended.
"""

# ============================================================
# TYPES OF STATEMENTS
# ============================================================

"""
Python statements are generally categorized into:

1. Simple Statements

Examples

Assignment
Import
Return
Pass
Break
Continue

2. Compound Statements

Examples

if
for
while
try
with
match (Python 3.10+)

These will be discussed in later chapters.
"""

# ============================================================
# INDENTATION
# ============================================================

"""
Unlike C, C++, or Java,
Python uses indentation to define code blocks.

A colon (:) starts a block,
and indentation defines the body.
"""

for i in range(1, 6):
    print(i)

"""
Recommended indentation:

4 Spaces

Do NOT mix tabs and spaces.

Incorrect indentation results in:

IndentationError
"""

# ============================================================
# EXPRESSIONS
# ============================================================

"""
An Expression is a combination of:

• Values
• Variables
• Operators
• Function Calls

that evaluates to a value.
"""

print(10 + 20)

a = 5

print(a * 2)

print(max(10, 20))

"""
Examples of Expressions

50 + 50

110 - 10

10 * 10

500 / 5

100 % 7

2 ** 8
"""

# ============================================================
# SYNTAX
# ============================================================

"""
Syntax is the set of rules
that defines how Python programs
must be written.

Correct

print("Hello")

Incorrect

print "Hello"

"Hello" print

These produce SyntaxError.
"""

# ============================================================
# SUMMARY
# ============================================================

"""
In this chapter you learned:

✔ Tokens

✔ Keywords

✔ Identifiers

✔ Literals

✔ Operators

✔ Comments

✔ Docstrings

✔ Statements

✔ Indentation

✔ Expressions

✔ Syntax
"""

# ============================================================
# QUIZ
# ============================================================

"""
1. What is a Token?

2. Name the five types of Python Tokens.

3. Can keywords be used as variable names?

4. What are Identifiers?

5. What is the difference between Literals and Variables?

6. What is a Docstring?

7. Which indentation is recommended in Python?

8. What is an Expression?

9. What happens if indentation is incorrect?

10. What is the difference between SyntaxError and IndentationError?
"""

# ============================================================
# ASSIGNMENT
# ============================================================

"""
1. Print all Python keywords.

2. Create five valid identifiers.

3. Create five invalid identifiers
   and explain why they are invalid.

4. Write examples of:

    • Numeric Literal
    • String Literal
    • Boolean Literal
    • None Literal
    • Collection Literal

5. Write a function with a docstring.

6. Create a program using:

    • Comments
    • Expressions
    • Statements
    • Proper Indentation

7. Write five expressions that evaluate to 100.

Examples:

50 + 50
150 - 50
20 * 5
500 / 5
10 ** 2
"""

# ============================================================
# RESOURCES
# ============================================================

"""
Official Documentation

https://docs.python.org/3/reference/

Python Keywords

import keyword
print(keyword.kwlist)

Think Python

https://www.greenteapress.com/thinkpython/

Programiz

https://www.programiz.com/python-programming

Javatpoint

https://www.javatpoint.com/python-tutorial
"""