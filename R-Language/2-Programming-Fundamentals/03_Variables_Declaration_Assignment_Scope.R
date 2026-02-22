############################################################
# 📌 Topic: Variables – Declaration, Assignment, Naming,
############################################################

# ==========================================================
# 1️⃣ Introduction to Variables
# ==========================================================
# A variable provides named storage that programs can manipulate.
# In R, a variable can store:
# - An atomic vector
# - A group of atomic vectors
# - A combination of multiple R objects

# ==========================================================
# 2️⃣ Declaration of Variables
# ==========================================================
# In R, variables are NOT declared with a data type.
# The variable gets its type from the object assigned to it.
#
# Hence, R is a dynamically typed language.
# The same variable can change its data type during execution.

a <- 2
b <- 2.8
c <- "Hitesh"
d <- "3"
e <- 1 + 2i

# ==========================================================
# 3️⃣ Checking Variable Types
# ==========================================================
# typeof() shows how the object is stored in memory

typeof(a)
typeof(b)
typeof(c)
typeof(d)
typeof(e)

# class() shows the abstract type of the object

class(a)
class(b)
class(c)
class(d)
class(e)

# ==========================================================
# 4️⃣ Finding Variables in Workspace
# ==========================================================
# ls() lists all variables in the workspace

print(ls())

# List variables starting with a pattern
print(ls(pattern = "var"))

# List hidden variables (starting with .)
print(ls(all.names = TRUE))

# ==========================================================
# 5️⃣ Checking if a Variable Exists
# ==========================================================
a <- 6
exists("a")

# ==========================================================
# 6️⃣ Deleting / Removing Variables
# ==========================================================
# Remove a specific variable
rm(var.3)

# Remove multiple variables
rm(x)
rm(y, z)

# Remove all variables
rm(list = ls())

# ==========================================================
# 7️⃣ Dynamic Typing – Pros and Cons
# ==========================================================
# Pros:
# - Easy to work with
# - Faster development

# Cons:
# - May result in unexpected bugs
# - Requires awareness of typeof() and class()

# ==========================================================
# 8️⃣ Assigning Values to Variables
# ==========================================================
# Assignment operators in R:
# - Equal (=)
# - Leftward (<-)
# - Rightward (->)

# Assignment using =
var1 = c(0, 1, 2, 3)

# Assignment using <-
var2 <- c("I am ", "Hitesh")

# Assignment using ->
c(TRUE, 1) -> var3   # Mixed data types

print(var1)
cat("var1 is ", var1, "\n")
cat("var2 is ", var2, "\n")
cat("var3 is ", var3, "\n")

# ==========================================================
# 9️⃣ Multiple Assignment
# ==========================================================
# Assigning a single value to multiple variables

x = y = z = 5
print(x)
print(y)
print(z)

# Assigning multiple values to multiple variables is NOT allowed
# a, b, c = 3, 4, 5  # Invalid in R

# ==========================================================
# 🔟 Rules and Naming Conventions
# ==========================================================
# Rules:
# - Can contain letters, digits, dot (.) and underscore (_)
# - Cannot contain special characters like %
# - Cannot start with a digit
# - Can start with a dot, but not followed by a digit
# - Cannot start with underscore

# Valid examples:
var_name2.
var.name

# Invalid examples:
# var_name%
# 2var_name
# .2var_name
# _var_name

# ==========================================================
# 1️⃣1️⃣ Naming Conventions (Best Practices)
# ==========================================================
# Recommended styles:

myVariable    # camelCase
myVariable_   # temporary variable naming

# ==========================================================
# 1️⃣2️⃣ Variable Scope
# ==========================================================
# Scope defines where a variable can be accessed.

# Types of Scope:
# 1. Global Variables
# 2. Local Variables

# ==========================================================
# 1️⃣3️⃣ Global Variables
# ==========================================================
# Global variables are accessible throughout the program.

a <- 7  # Global variable

display <- function() {
  print(a)  # Accessing global variable
}

display()

# Modifying global variable
a <- 10
print(a)

# ==========================================================
# 1️⃣4️⃣ Local Variables
# ==========================================================
# Local variables exist only inside a function or block.

a <- 7

display <- function() {
  print(a)  # Global variable
  b <- 6    # Local variable
  print(b)
}

display()

# Global variable modification
a <- 10
print(a)

# Local variable not accessible outside function
print(b)   # Error: object 'b' not found

# New variable b (not the same as local b)
b <- 3
print(b)

# ==========================================================
# Quiz, Assignments and Resources
# ==========================================================
# These will be covered in upcoming chapters.

# ==========================================================
# End of File
# ==========================================================