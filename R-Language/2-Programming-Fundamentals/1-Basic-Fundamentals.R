#Tokens

#Tokens are Elementary Building Blocks of a Programming Language
#Tokens can be defined as a punctuator mark, reserved words and each individual word in a statement.
#Token is the smallest unit inside the given program

#There are following tokens in R:

#keywords
#Identifiers
#Literals
#Operators

#######Keywords##########

#Keywords are special reserved words which convey a special meaning to the complier / interpreter.
#Each Keyword have a special meaning and a specific operation
#These keywords cant be used as variables

#List of keywords#
# Following is the list of keywords #

if
else
while
repeat
for
function
in
next
break
TRUE
FALSE
NULL
Inf
NaN
NA
NA_integer_
NA_character_
NA_real_
NA_complex_

# Identifiers #

# Variables are used to store data, whose value can be changed according to our need. Unique name given to variable (function and objects as well) is identifier.
# Each program elements in a program are given a name called identifiers.
# An Identifier is a name given to entities like class, functions, variables, etc. It helps to differentiate one entity from another
# An Identifier is used to identify the literals used in the program

############ The Rules to name an Identifier are given below #######

# Identifiers can be a combination of letter, digits, period (.) and underscore (_)
# It must start with a letter or a period. If it starts with a period, it cannot be followed by digit.
# Reserved words in R cannot be used as Identifiers.

# Valid Identifiers in R

total
sum
.fine.with.dot
this_is_acceptable
Number5

#Invalid Identifiers in R

tot@l, 5um, _fine, TRUE, .0ne

######## Best Practices  #########

#Earlier version of R used (_) as an assignment operator. So, the period (.) was used extensively in variable names having multiple words
#Current version of R support underscore as a valid identifier but it is good practice to use period as word seperators

# For example, a.variable.name is preferred over a_variable_name or alternatively we could use camel case as aVariableName

######### Literals ###########

# A literal is a notation for representing a fixed value in source code...

######### Operators ##########

# Operators are like +, -, *, ...etc

# ex: 3+3 =6

######### Comments ###########

# Comments are very important while writing a program. They describe what is goining on inside a program, so that a person looking at the source code does not have a hard time figuring it out.
# - This is ignored by Interpreter

### Types of Comments

# Generally there are three types of comments
# 1. Single line of Comment
# 2. Multi line comments
# 3. Doc Strings

####### Single Line Comment #######

# we use the hash (#) symbol to start writing a comment
# Ex:

# How are You?
# print("Hello World)

# R doesnt support multiline and documentation comments. It only supports single-line comments drafted by a "#" symbol
# Control + Shift + C (Windows) as shortcut in R studio

# How to write better comments

# Use comments to describe what a function does and not the specific details on how the function does it.
# Try to remove as many redundant comments as possible. Try writing code that can explain itself, using better function/variable name choice
# Try to make the comments as short and concise as possible

######### Statements ########

# Instructions that a interpreter can execute are called statements
# Each statement is not ended with semicolon. its is identified by

# For Ex:

a = 1
print(a) # is an assignment statement.

if statement, for statement, while statement, etc are other kinds of statements which will be discussed later

# R doesnot support multi-line statement

## Different Types of Statements ##

# There are two types of statements

# 1. Control Flow Statements
# 2. Looping Statements

############# Indentation ##############

# There is no indentation in this language

############## Expression ##############

# An expression is a combination of values, variables and operators
# If you type an expression on the command line, the interpreter evaluates it and displays the result:

1+1

# Although expressions contain values, variables, and Operators, not every expression contains all of these elements. A value all by itself is considered an expression, and so is a variable.
# Confusingly, evaluating an expression is not quite the same thing as printing a value.

# Assign:

# Write an expression for 100

50+50
110-10
10*10

# Syntax:

# Its nothing but a set of rules for specific purpose

#Example:

print("Hello")
print "Hello" # Cannot write like this
"Hello" print # Cannot write like this

# Variable

# Its nothing but the value stored temporarily

var = 1 # using assignment operator
var1 <- 0 # Using the Lesser (<) and - Operator combinations