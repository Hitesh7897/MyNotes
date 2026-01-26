############################################################
# 📌 Topic: Tokens, Identifiers, Operators & Basic Syntax in R
# 📂 Playlist: R Programming – Full Course
############################################################

# ==========================================================
# 1️⃣ Tokens in R
# ==========================================================
# Tokens are the elementary building blocks of a programming language.
# A token is the smallest unit inside a program.
# Tokens can be:
# - Keywords
# - Identifiers
# - Literals
# - Operators

# ==========================================================
# 2️⃣ Keywords
# ==========================================================
# Keywords are special reserved words with predefined meaning.
# They convey special instructions to the interpreter.
# Keywords CANNOT be used as variable names.

# --------------------------
# List of Keywords in R
# --------------------------

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

# ==========================================================
# 3️⃣ Identifiers
# ==========================================================
# Identifiers are names given to:
# - Variables
# - Functions
# - Objects
# - Classes
#
# They help differentiate one entity from another.
# Identifiers are used to identify literals used in a program.

# ==========================================================
# Rules for Naming Identifiers
# ==========================================================
# - Can contain letters, digits, period (.) and underscore (_)
# - Must start with a letter or a period (.)
# - If starting with a period, it cannot be followed by a digit
# - Reserved keywords cannot be used as identifiers

# --------------------------
# Valid Identifiers
# --------------------------

total
sum
.fine.with.dot
this_is_acceptable
Number5

# --------------------------
# Invalid Identifiers
# --------------------------
# tot@l
# 5um
# _fine
# TRUE
# .0ne

# ==========================================================
# 4️⃣ Best Practices for Identifiers
# ==========================================================
# - Older versions of R used (_) as assignment operator
# - Period (.) was widely used for multi-word names
# - Modern R supports underscore (_), but period is still preferred

# Preferred styles:
# a.variable.name
# aVariableName   (camelCase)

# ==========================================================
# 5️⃣ Literals
# ==========================================================
# A literal is a fixed value written directly in the source code.
# Examples:
# 10
# 3.14
# "Hello"
# TRUE

# ==========================================================
# 6️⃣ Operators
# ==========================================================
# Operators perform operations on values or variables.
# Examples:
# +  -  *  /  ^

# Example:
3 + 3

# ==========================================================
# 7️⃣ Comments in R
# ==========================================================
# Comments describe what is happening inside a program.
# Comments are ignored by the interpreter.

# ==========================================================
# Types of Comments
# ==========================================================
# R supports ONLY single-line comments using #

# Example:
# This is a comment
# print("Hello World")

# Shortcut in RStudio:
# Ctrl + Shift + C (Windows / Linux)

# ==========================================================
# Writing Better Comments
# ==========================================================
# - Describe WHAT the code does, not HOW
# - Avoid redundant comments
# - Use meaningful variable and function names
# - Keep comments short and clear

# ==========================================================
# 8️⃣ Statements
# ==========================================================
# A statement is an instruction that the interpreter can execute.
# R statements do NOT end with semicolons.

# Example:
a <- 1
print(a)

# Control statements include:
# if, for, while, repeat (covered later)

# R does NOT support multi-line statements

# ==========================================================
# Types of Statements
# ==========================================================
# 1. Control Flow Statements
# 2. Looping Statements

# ==========================================================
# 9️⃣ Indentation
# ==========================================================
# R does not enforce indentation rules.
# Indentation is used only for readability.

# ==========================================================
# 🔟 Expressions
# ==========================================================
# An expression is a combination of:
# - Values
# - Variables
# - Operators

# Example:
1 + 1

# A single value or variable is also an expression.

# Examples:
50 + 50
110 - 10
10 * 10

# ==========================================================
# 1️⃣1️⃣ Syntax in R
# ==========================================================
# Syntax refers to the rules of writing valid R code.

# Valid syntax:
print("Hello")

# Invalid syntax:
# print "Hello"
# "Hello" print

# ==========================================================
# 1️⃣2️⃣ Variables
# ==========================================================
# Variables store values temporarily in memory.

# Assignment using =
var <- 1

# Assignment using <-
var1 <- 0

# Both are valid, but <- is preferred in R
