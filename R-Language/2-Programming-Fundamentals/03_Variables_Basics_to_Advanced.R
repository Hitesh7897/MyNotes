############################################################
# 📌 Topic: Variables in R – Basics to Advanced
############################################################

# ==========================================================
# 1️⃣ Introduction
# ==========================================================
# A variable is a named container that stores a value in memory
# so it can be reused, modified, and passed in a program.

x <- 10
# x   -> variable name
# <-  -> assignment operator
# 10  -> value stored

# A variable in R can store:
# - Atomic vectors
# - Groups of atomic vectors
# - Combinations of multiple R objects

# ==========================================================
# 2️⃣ Variable Assignment in R
# ==========================================================
# Assignment operators:
# <-   Standard assignment
# =    Assignment
# ->   Right assignment
# <<-  Global assignment

x <- 10     # Standard assignment (recommended)
x = 10      # Assignment
10 -> x     # Right assignment
x <<- 10    # Global assignment (use carefully)

# Best practice: Always use <-

# ----------------------------------------------------------
# Single Variable Assignment
# ----------------------------------------------------------
var1 = c(0, 1, 2, 3)
var2 <- c("I am ", "Hitesh")
c(TRUE, 1) -> var3    # Mixed types

print(var1)
cat("var1 is ", var1, "\n")
cat("var2 is ", var2, "\n")
cat("var3 is ", var3, "\n")

# ----------------------------------------------------------
# Multiple Assignment
# ----------------------------------------------------------
# Assigning a single value to multiple variables

x = y = z = 5
print(x)
print(y)
print(z)

# Assigning multiple values to multiple variables is NOT allowed
# a, b, c = 3, 4, 5  # Invalid

# ==========================================================
# 3️⃣ Variable Types (Data Stored)
# ==========================================================
# R is dynamically typed – variables get type from assigned object

a <- 2          # Numeric
b <- 2L         # Integer
c <- "Hitesh"   # Character
d <- TRUE       # Logical
e <- 1 + 2i     # Complex

# ==========================================================
# 4️⃣ Dynamic Typing in R
# ==========================================================
# Variable type can change at runtime

x <- 10
x <- "Ten"
x <- TRUE

# Pros:
# - Easy to work with
# - Faster development

# Cons:
# - Unexpected bugs possible
# - Must be aware of typeof() and class()

# ==========================================================
# 5️⃣ Rules and Naming Conventions
# ==========================================================
# Rules:
# - Letters, digits, dot (.) and underscore (_) allowed
# - Cannot contain %
# - Cannot start with digit
# - Dot allowed at start but not followed by digit
# - Cannot start with underscore

# Valid:
var_name2.
var.name

# Invalid:
# var_name%
# 2var_name
# .2var_name
# _var_name

# Naming conventions (recommended):
myVariable     # camelCase
myVariable_    # temporary variable

# ==========================================================
# 6️⃣ Variable Reassignment
# ==========================================================
count <- 5
count <- count + 1
count

# ==========================================================
# 7️⃣ Finding Variables
# ==========================================================
print(ls())
print(ls(pattern = "var"))
print(ls(all.names = TRUE))

# ==========================================================
# 8️⃣ Deleting / Removing Variables
# ==========================================================
rm(var.3)
rm(x)
rm(y, z)
rm(list = ls())   # Remove all variables

# ==========================================================
# 9️⃣ Variable Scope
# ==========================================================
# Scope defines where a variable can be accessed

# ----------------------------------------------------------
# Global Variables
# ----------------------------------------------------------
a <- 7

display <- function() {
  print(a)
}

display()

a <- 10
print(a)

# ----------------------------------------------------------
# Local Variables
# ----------------------------------------------------------
a <- 7

display <- function() {
  print(a)
  b <- 6
  print(b)
}

display()

a <- 10
print(a)

# Local variable not accessible
print(b)   # Error

b <- 3
print(b)

# ----------------------------------------------------------
# Global Assignment
# ----------------------------------------------------------
x <- 5

f <- function() {
  x <<- x + 1
}

f()
x   # Use <<- sparingly

# ==========================================================
# 🔟 Variable Lifetime
# ==========================================================
rm(x)

# ==========================================================
# 1️⃣1️⃣ Checking Variables
# ==========================================================
exists("x")

# ==========================================================
# 1️⃣2️⃣ Type and Structure
# ==========================================================
class(a)
typeof(a)
str(a)

class(b)
typeof(b)
str(b)

class(c)
typeof(c)
str(c)

class(d)
typeof(d)
str(d)

class(e)
typeof(e)
str(e)

# ==========================================================
# 1️⃣3️⃣ Variables in Expressions
# ==========================================================
a <- 5
b <- 3
c <- a + b * 2
c   # Multiplication evaluated first

# ==========================================================
# 1️⃣4️⃣ Variables with Vectors & Objects
# ==========================================================
scores <- c(70, 80, 90)
names <- c("A", "B", "C")

# ==========================================================
# 1️⃣5️⃣ Variables as References (Copy-on-Modify)
# ==========================================================
x <- c(1, 2, 3)
y <- x
y[1] <- 100
x   # x remains unchanged

# ==========================================================
# 1️⃣6️⃣ Reserved Words (Cannot Be Variables)
# ==========================================================
# if, else, for, while, function, TRUE, FALSE, NULL

# ==========================================================
# 1️⃣7️⃣ Variables Inside Loops
# ==========================================================
sum <- 0

for (i in 1:5) {
  sum <- sum + i
}

sum

# ==========================================================
# 1️⃣8️⃣ Shadowing Variables
# ==========================================================
x <- 10

f <- function() {
  x <- 5
  x
}

f()
x

# ==========================================================
# 1️⃣9️⃣ Using Variables Safely
# ==========================================================
# - Use meaningful names
# - Avoid <<- unless necessary
# - Clean environment regularly
# - Use exists() before access

# ==========================================================
# 2️⃣0️⃣ Common Mistakes
# ==========================================================
# Overwriting built-in functions

mean <- 5
mean(c(1, 2, 3))   # ERROR

# ==========================================================
# 2️⃣1️⃣ Real-World Example
# ==========================================================
weight <- 70
height <- 1.75
bmi <- weight / (height ^ 2)
bmi

# ==========================================================
# 2️⃣2️⃣ Key Takeaways
# ==========================================================
# - Variables store values
# - R uses dynamic typing
# - Scope matters
# - Variables can be reassigned
# - Use best practices

# ==========================================================
# Quiz, Assignments and Resources
# ==========================================================
# Included as exercises in the same file or future chapters

# ==========================================================
# End of File
# ==========================================================
