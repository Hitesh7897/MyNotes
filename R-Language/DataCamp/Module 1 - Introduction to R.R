# Modulo 1 : Introdcution to R

# How it Works

# Calculate 3+4

3+4

# Calculate 6+12

6+12

# Arithmetic with R

# In its most basic form, R can be used as a simple calculator. Considering the following Airthmetic Operators:

# Addition (+)
# Substraction (-)
# Multiplication (*)
# Division (/)
# Exponent (^)
# Modulo (%%)

# An Addition
5+5
# Ans : 10

# A Substraction

5-5
Ans : 0

# A multiplication

3*5
# Ans : 15

# A division

(5+5)/2
# Ans : 5

# Exponent

2^5
Ans : 32

# Modulo

28%%6
#Ans : 4

# Variable assignment

# A basic concept in (statistical) programming is called a variable.
# 
# A variable allows you to store a value (eg: 4) or an object (eg: a function description) in R
# You can then later use this variable name to easily access the value or the object that is stored within the variable

# Assign value 42 to x

x <- 42

# print out the value of the variable

print(x)
x

# Assign the value 5 to the variable my_apples
apples <- 5

# Print out the value of the variable my_apples
apples

# Assign a value to the variables my_apples & my_oranges

apples <- 6
oranges <- 6

# Add these two variables together

apples+oranges

# Create the variable my_fruit

fruit <- apples+oranges

# Basic Data Types in R

# R works with numerous data types. Some of the most basic types to get started are:

# Decimal Values like 4.5 are called numerics
# whole numbers like 4 are called Integers. Integers are also numerics
# Boolean Value (TRUE or FALSE) are called logical
# Text (or String) values are called characters

# Note how the quotation marks in the editor indicate that "Some Text" is a string

# Assign my_numeric to be 42
my_numeric <- 42

# Assign my_character to be "Universe"

my_character <- "Universe"

# Assign my logical to be FALSE

my_logical <- FALSE

# Whats theat data type?

# Check class of my numeric
class(my_numeric)
