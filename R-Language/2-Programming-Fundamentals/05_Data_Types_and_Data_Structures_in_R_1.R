############################################################
# 📌 Topic: Data Types and Data Structures in R
############################################################

# ==========================================================
# 1️⃣ Introduction
# ==========================================================
# Variables store values in memory.
# When a variable is created, memory is allocated based on
# the data type of the object assigned to it.

# R objects are composed of atomic values.
# Based on type and structure, R objects can be:

# - Scalars (single value)
# - Vectors (sequence of same-type values)
# - Matrices (2D vector)
# - Data Frames (tabular structure)
# - Lists (heterogeneous collection)

# R has 6 primary atomic data types:
# 1) Numeric (double)
# 2) Integer
# 3) Logical
# 4) Complex
# 5) Character
# 6) Raw

# ==========================================================
# 2️⃣ Atomic Data Types
# ==========================================================

# --------------------------
# Logical
# --------------------------
mylogical <- TRUE
mylogical2 <- FALSE

cat("mylogical:", mylogical, "\n")
cat("mylogical2:", mylogical2, "\n")
class(mylogical)

# --------------------------
# Numeric (Double)
# --------------------------
mynumeric <- 323
class(mynumeric)

mynumeric <- 3.2
class(mynumeric)

# --------------------------
# Integer
# --------------------------
myinteger <- 322L
class(myinteger)

# as.integer()
a <- as.integer(3)

# --------------------------
# Complex
# --------------------------
mycomplex <- 3 + 2i
class(mycomplex)

# --------------------------
# Character
# --------------------------
mychar <- "R is a Super Programming language"
class(mychar)

mychar <- 'R is a Super Programming language'
class(mychar)

# --------------------------
# Raw
# --------------------------
myraw <- charToRaw("R Language")
class(myraw)

# ==========================================================
# 3️⃣ Special Types
# ==========================================================

# Date
d <- as.Date("2026-01-13")
typeof(d)   # stored as double
class(d)    # treated as Date

# Date-Time
t <- as.POSIXct("2026-01-13 10:30:00")
class(t)

# NULL
x <- NULL

# NA (Missing Value)
x <- c(10, NA, 30)

# ==========================================================
# 4️⃣ Strings
# ==========================================================
# Strings are character values enclosed in quotes.

"Hello world"
'Hello world'

mychar <- "R is powerful"
class(mychar)

# ==========================================================
# 5️⃣ Data Structures
# ==========================================================

# ----------------------------------------------------------
# Vectors
# ----------------------------------------------------------
names_vec <- c("Hitesh", "B G", "Kumar", "Harsha")
class(names_vec)

# ----------------------------------------------------------
# Lists
# ----------------------------------------------------------
names_list <- list("Hitesh", 12, TRUE, 12L)
class(names_list)

nested_list <- list(c(34, 23), names_list)
class(nested_list)

# ----------------------------------------------------------
# Matrices
# ----------------------------------------------------------
mat <- matrix(c("Hitesh", "B G", "Kumar", "Harsha"),
              nrow = 2,
              byrow = TRUE)
class(mat)

# ----------------------------------------------------------
# Arrays
# ----------------------------------------------------------
arr <- array(c("Hitesh", "B G", "Kumar", "Harsha"),
             dim = c(2, 2, 2))
class(arr)

# ----------------------------------------------------------
# Factors
# ----------------------------------------------------------
names_factor <- factor(c("Hitesh", "Vedha", "Hitesh"))
class(names_factor)

# ----------------------------------------------------------
# Data Frames
# ----------------------------------------------------------
stu.data <- data.frame(
  student_id = 14:19,
  student_name = c("Hitesh","vee","vaib","prave","rudresh","sontosh"),
  student_age = c(32,44,34,56,34,23),
  student_class = c("MCA","BCA","BTECH","BE","MTECH","MSC"),
  student_join = as.Date(c("2021-01-20","2022-01-22",
                           "2000-03-18","2012-01-11",
                           "2022-01-14","2000-03-24")),
  stringsAsFactors = FALSE
)

class(stu.data)
typeof(stu.data)

# ==========================================================
# 6️⃣ Default Values of Types
# ==========================================================

numeric(2)       # 0
integer(4)       # 0L
logical(1)       # FALSE
character(1)     # ""
complex(1)       # 0+0i
raw(1)
vector("list",1)
factor(character(1))
as.Date(character(1))
as.POSIXct(character(1))

# ==========================================================
# 7️⃣ Understanding Type vs Class vs Mode vs Structure
# ==========================================================

x <- as.Date("2026-01-13")

typeof(x)   # storage type
class(x)    # conceptual type
mode(x)     # legacy type
str(x)      # structure

# Example: Factor
f <- factor(c("A", "B", "A"))
typeof(f)
class(f)

# ==========================================================
# 8️⃣ Type Testing Functions
# ==========================================================

is.numeric(23.2)
is.integer(32L)
is.character("2")
is.vector(4)
is.matrix(mat)
is.data.frame(stu.data)
is.logical(TRUE)

# ==========================================================
# 9️⃣ Handling Missing Values
# ==========================================================

# Different typed NA values
NA
NA_integer_
NA_real_
NA_character_
NA_complex_

x <- c(1, 2, NA)
is.na(x)

# Logical NA
x <- NA
typeof(x)

# Character NA
name <- c("Ravi", "Sita", NA_character_)
typeof(name)

# ifelse with NA
x <- c(1, 2, NA)
ifelse(x > 1, "High", NA_character_)

# NULL vs NA
a <- list(2,3,4)
a <- NULL
is.null(a)

# ==========================================================
# 1️⃣0️⃣ Why Missing Values Matter
# ==========================================================
# Missing values are NOT:
# - Zero
# - Empty string
#
# They represent:
# - Data not collected
# - Unknown data
# - Not applicable data

# Incorrect handling can:
# - Bias analysis
# - Break statistical models
# - Cause regulatory issues

# ==========================================================
# Quiz, Assignment and Resources
# ==========================================================

# Resources:
# https://www.tutorialspoint.com/r/r_data_types.htm
# https://www.r-bloggers.com/2021/04/handling-missing-values-in-r/
# https://bcb420-2022.github.io/R_basics/r-scalars.html#r-data-types

# ==========================================================
# End of File
# ==========================================================