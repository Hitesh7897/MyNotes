############################################################
# 📌 Topic: First R Program | Hello World & User Input
# 📂 Playlist: R Programming – Full Course
############################################################

# ==========================================================
# 1️⃣ What you will learn in this file
# ==========================================================
# - Writing your first R program
# - Using print() and cat()
# - Creating and calling functions
# - Taking input from users
# - Understanding readline() and scan()
# - Getting help in R

# ==========================================================
# 2️⃣ Your First Program in R
# ==========================================================
# The traditional first program in any language is "Hello World"

# ==========================================================
# 3️⃣ Using print() function
# ==========================================================

print("Hello World")

# By default, print() shows quotes
print("Hello World", quote = FALSE)

# ==========================================================
# 4️⃣ Using Functions in R
# ==========================================================
# Functions help us reuse code

new.hello <- function() {
  print("Hello World")
}

# Calling the function
new.hello()

# ==========================================================
# 5️⃣ Reading Input from the User (readline)
# ==========================================================
# readline() always takes input as STRING
# We need to convert it if required

# Syntax
var <- readline()
var <- as.integer(var)

# ==========================================================
# 6️⃣ Taking Input as a String
# ==========================================================

name <- readline(prompt = "Enter your name: ")
print(name)

# ==========================================================
# 7️⃣ Taking Input as a Number
# ==========================================================

num <- readline(prompt = "Enter a Number: ")
num <- as.integer(num)
print(num)

# ==========================================================
# 8️⃣ Type Conversion Functions
# ==========================================================
# as.integer(n)  -> Converts to integer
# as.numeric(n)  -> Converts to numeric (double / float)
# as.complex(n)  -> Converts to complex (e.g., 3+2i)
# as.Date(n)     -> Converts to Date

# ==========================================================
# 9️⃣ Taking Multiple Inputs from User
# ==========================================================

{
  name  <- readline(prompt = "Enter Your Name: ")
  age   <- readline(prompt = "Enter Your Age: ")
  place <- readline(prompt = "Enter Your Place: ")
}

print(name)
print(age)
print(place)

# ==========================================================
# 🔟 Using scan() Function
# ==========================================================
# scan() reads input continuously from console
# Press ENTER twice to stop input

# Default: numeric input
x <- scan()

# ==========================================================
# 1️⃣1️⃣ scan() with Data Types
# ==========================================================

# Read integer values
age_int <- scan(what = integer())

# Read double values
age_double <- scan(what = double())

# Read character values
names_char <- scan(what = character())

# ==========================================================
# 1️⃣2️⃣ Reading Data from File using scan()
# ==========================================================
# Example (path will vary based on system)

# file_data <- scan("C:\\DESKTOP\\sample.txt")

# ==========================================================
# 1️⃣3️⃣ Displaying Output
# ==========================================================

# Using print()
print("Hello World")

# Using cat() – cleaner output, no quotes
cat("Hello World")

# ==========================================================
# 1️⃣4️⃣ Useful File Handling Functions
# ==========================================================
# source() -> Runs an R script from a file
# sink()   -> Redirects R output to a file

# ==========================================================
# 1️⃣5️⃣ Getting Help in R
# ==========================================================

# Help for a known function
help(print)
?print

# Examples of functions
example("paste")
example("for")

# Demos in R
demo()

# All available demos
demo(package = .packages(all.available = TRUE))

# Specific demos
demo(plotmath)
demo(graphics)

# ==========================================================
# End of File
# ==========================================================