############################################################
# 📌 Topic: Operators in R
############################################################

# ==========================================================
# 1️⃣ Introduction
# ==========================================================
# An operator is a symbol that performs a specific operation
# on one or more operands (values or variables).
#
# R is rich in built-in operators and supports
# vectorized operations by default.

# Operators are used to perform:
# - Arithmetic
# - Comparison
# - Logical evaluation
# - Assignment
# - Special-purpose operations

# ==========================================================
# 2️⃣ Types of Operators in R
# ==========================================================
# 1) Arithmetic Operators
# 2) Relational (Comparison) Operators
# 3) Logical Operators
# 4) Assignment Operators
# 5) Miscellaneous Operators

# ==========================================================
# 3️⃣ Arithmetic Operators
# ==========================================================

# Arithmetic operators work element-wise on vectors.

# Operator   Description
# +          Addition
# -          Subtraction
# *          Multiplication
# /          Division
# %%         Modulus (remainder)
# %/%        Integer division (quotient)
# ^          Exponentiation

a <- c(3, 5.5, 6)
b <- c(22, 7, 6)

a + b      # Addition
a - b      # Subtraction
a * b      # Multiplication
a / b      # Division
a %% b     # Modulus
a %/% b    # Integer division
a ^ 3      # Exponentiation

# ==========================================================
# 4️⃣ Relational (Comparison) Operators
# ==========================================================

# Relational operators compare values and return logical results.

# Operator   Description
# <          Less than
# >          Greater than
# <=         Less than or equal to
# >=         Greater than or equal to
# ==         Equal to
# !=         Not equal to

a <- c(3, 5.5, 6)
b <- c(22, 7, 6)

a < b
a > b
a <= b
a >= b
a == b
a != b

# ==========================================================
# 5️⃣ Logical Operators
# ==========================================================

# Logical operators are used for logical conditions.
# R supports both element-wise and short-circuit logic.

# Operator   Description
# &          Element-wise AND
# |          Element-wise OR
# !          Logical NOT
# &&         Short-circuit AND (first element only)
# ||         Short-circuit OR  (first element only)

a <- c(TRUE, FALSE, TRUE)
b <- c(FALSE, TRUE, TRUE)

a & b      # Element-wise AND
a | b      # Element-wise OR
!a         # NOT

a && b     # Short-circuit AND
a || b     # Short-circuit OR

# NOTE:
# && and || are mainly used in if conditions.

# ==========================================================
# 6️⃣ Assignment Operators
# ==========================================================

# Assignment operators assign values to variables.

# Operator   Description
# <-, =      Left assignment
# <<-        Global assignment
# ->         Right assignment
# ->>        Global right assignment

x <- 10
x = 10

10 -> y

# Global assignment (use carefully)
f <- function() {
  z <<- 5
}
f()
z

# ==========================================================
# 7️⃣ Miscellaneous Operators
# ==========================================================

# --------------------------
# Colon Operator (:)
# --------------------------
v <- 4:10
v

# --------------------------
# Membership Operator (%in%)
# --------------------------
v1 <- 9
v2 <- 4
h <- 1:8

v1 %in% h
v2 %in% h

# --------------------------
# Matrix Multiplication (%*%)
# --------------------------
M <- matrix(c(1,2,3,4,5,6), nrow=2, byrow=TRUE)
t(M)            # Transpose
M %*% t(M)      # Matrix multiplication

# ==========================================================
# 8️⃣ Operator Overloading in R
# ==========================================================

# R supports limited operator overloading via S3/S4 methods.
# Operators behave differently depending on object class.

# Numeric addition
a <- 3
b <- 3
a + b

# Character addition is NOT supported
# "Hitesh" + "B G"  # ERROR

# Lists cannot be added
# list(1,2) + list(3,4)  # ERROR

# NOTE:
# Operator overloading in R is controlled internally
# via class-based method dispatch (advanced topic).

# ==========================================================
# 9️⃣ Operator Precedence and Associativity
# ==========================================================

# Operator precedence determines evaluation order.
# Associativity determines direction when precedence is equal.

# Higher precedence → evaluated first

# (Highest → Lowest)
# ^                Exponentiation (right to left)
# + -              Unary plus/minus
# :                Sequence
# %% %/%           Modulus / integer division
# * /              Multiplication / division
# + -              Addition / subtraction
# < <= > >= == !=  Comparisons
# !                Logical NOT
# & &&             Logical AND
# | ||             Logical OR
# <- <<- = -> ->>  Assignment

# --------------------------
# Examples
# --------------------------

4 * 7 %% 3      # 4 * (7 %% 3)
2 * 3 ^ 2       # 2 * (3^2)

4 ^ 2 + 2       # (4^2) + 2
(3 ^ 2) * 2

# ^ is right-associative
2 ^ 3 ^ 2       # 2^(3^2)

# Comparisons do NOT chain
# 5 < 7 < 9  ❌ Incorrect in R

5 < 7 & 7 < 9   # ✅ Correct way

# ==========================================================
# 🔟 Key Notes
# ==========================================================

# - Arithmetic operators are vectorized
# - Logical operators have element-wise and short-circuit versions
# - Assignment operators control variable scope
# - Operator precedence affects correctness
# - Never chain comparisons directly in R

# ==========================================================
# Quiz, Assignment & Resources
# ==========================================================

# Resources:
# https://www.tutorialspoint.com/r/r_operators.htm
# https://www.w3adda.com/r-tutorial/r-operator-precedence

# ==========================================================
# End of File
# ==========================================================