############################################################
# 📌 Topic: Command Prompt, Functions, Classes & Help System
# 📂 Playlist: R Programming – Full Course
############################################################

# ==========================================================
# 1️⃣ Command Prompt Usage
# ==========================================================
# Basic interaction with R happens through the console (command prompt)

# Using print() function
print("Hello World")

# Suppressing quotes in output
print("Hello World", quote = FALSE)

# Concatenating multiple values using paste()
print(paste("How", "are", "You"))

# Notes:
# - print is a statement
# - "Hello World" is a string literal
# - paste is a function

# ==========================================================
# 2️⃣ Using Functions
# ==========================================================
# Functions help in reusability and modularity

hello <- function() {
  print("Hello World")
}

# Calling the function
hello()

# Notes:
# - hello is a function name (identifier)
# - function is a keyword
# - print is a statement
# - function has its own syntax

# ==========================================================
# 3️⃣ Using Class
# ==========================================================
# Creating an object using list()

studentDetails <- list(
  name  = "Hitesh",
  age   = 28,
  place = "INDIA"
)

# Checking the class of the object
class(studentDetails)

# Notes:
# - studentDetails is an identifier
# - list() creates a list object
# - name, age, place are identifiers and act as arguments
# - class is a keyword

# ==========================================================
# 4️⃣ Help Information
# ==========================================================
# Getting help for known functions

help("print")
?print

# Viewing examples of a function
example("paste")
example("for")

# Running demos
demo()

# All available demos
demo(package = .packages(all.available = TRUE))

# Specific demos
demo(plotmath)
demo(graphics)

# ==========================================================
# 5️⃣ Searching for Functions
# ==========================================================
# Search when you do not know the exact function name

??regression
help.search("regression")

# Non-standard names should be quoted
??"logistic regression"

# Search objects in current session using regex
apropos("a$")

# Online search in R documentation
RSiteSearch("logistic regression")

# ==========================================================
# 6️⃣ Packages Information
# ==========================================================
# View available packages in repositories
View(available.packages())

# View installed packages
View(installed.packages())

# List installed packages with description
library()

# Library paths
.libPaths()

# Available datasets
data()

# Loaded packages
search()

# Package description
packageDescription("utils")

# ==========================================================
# 7️⃣ Environment Inspection
# ==========================================================
# List objects in global environment
ls()

# Include hidden objects
ls(all.names = TRUE)

# List objects from a package
ls("package:broom")

# Inspect structure of an object
str(a)

# Summary statistics
summary(a)

# Glimpse (similar to summary, requires dplyr)
glimpse(a)

# ==========================================================
# 8️⃣ Working with Directories
# ==========================================================
# Get current working directory
getwd()

# List files in working directory
ls()

# Set working directory
setwd("c:/docs/utils")   # Windows (preferred)
setwd("c:/docs/utils")   # Linux / Mac

# ==========================================================
# 9️⃣ Session Options
# ==========================================================
# Learn about available options
help("options")

# View current options
options()

# Change number of digits displayed
options(digits = 3)

# ==========================================================
# 🔟 Command History
# ==========================================================
# View last 25 commands
history()

# View all previous commands
history(max.show = Inf)

# Save command history
savehistory(file = "myfile")

# Load command history
loadhistory(file = "myfile")

# ==========================================================
# 1️⃣1️⃣ Saving and Loading Workspace
# ==========================================================
# Save entire workspace
save.image()

# Save specific objects
save(object_list, file = "myfile.RData")

# Load workspace or objects
load("myfile.RData")

# Quit R (will prompt to save workspace)
q()

# ==========================================================
# 1️⃣2️⃣ Removing Objects
# ==========================================================
# Remove a specific object
rm(EX1)

# Remove all objects
rm(list = ls())

# Remove specific objects
rm(list = c("EX"))
rm(list = c("EX", "DM"))

# Remove objects matching a pattern
rm(list = ls(pattern = "IE_"))

# Remove all except one object
rm(list = setdiff(ls(), "x"))

# Remove all except multiple objects
rm(list = setdiff(ls(), c("x", "y")))

# ==========================================================
# 1️⃣3️⃣ Note on Path Handling
# ==========================================================
# R treats "\" as an escape character
# Avoid using paths like:
# c:\mydocuments\myfile.txt

# Use either:
# c:\\mydocuments\\myfile.txt
# OR
# c:/mydocuments/myfile.txt

# ==========================================================
# End of File
# ==========================================================