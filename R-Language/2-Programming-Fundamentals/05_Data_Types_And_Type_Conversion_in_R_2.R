############################################################
# 📌 Topic: Data Types, Data Structures & Type Conversion in R
############################################################

# ==========================================================
# 1️⃣ Introduction
# ==========================================================
# In programming, variables store values in memory.
# Memory allocation depends on the data type of the object.

# R objects are built from atomic values.
# Based on structure and composition, objects include:

# - Scalars (single value)
# - Vectors (same-type sequence)
# - Matrices (2D vectors)
# - Arrays (multi-dimensional vectors)
# - Lists (heterogeneous collection)
# - Data Frames (tabular data)

# R has 6 primary atomic types:
# 1) numeric (double)
# 2) integer
# 3) logical
# 4) complex
# 5) character
# 6) raw

# ==========================================================
# 2️⃣ Atomic Data Types
# ==========================================================

# Logical
a <- TRUE
typeof(a)
class(a)

# Numeric (double - default)
a <- 323
typeof(a)
class(a)

a <- 3.6
typeof(a)
class(a)

# Integer
a <- 323L
typeof(a)
class(a)

a <- as.integer(3)

# Complex
c1 <- 3 + 2i
typeof(c1)
class(c1)

# Character
c2 <- "R Programming"
typeof(c2)
class(c2)

# Raw
r1 <- charToRaw("R Language")
typeof(r1)
class(r1)

# ==========================================================
# 3️⃣ Date & Time Types
# ==========================================================

# Date
d <- as.Date("2026-01-13")
typeof(d)   # stored as double
class(d)    # Date

# POSIXct (recommended for date-time)
t1 <- as.POSIXct("2026-01-13 10:30:00")
typeof(t1)
class(t1)

# POSIXlt (list-based, detailed extraction)
t2 <- as.POSIXlt(Sys.time())
t2$hour
t2$min
t2$sec

# ==========================================================
# 4️⃣ Strings
# ==========================================================
s1 <- "Hello"
s2 <- 'World'

typeof(s1)
class(s1)

# ==========================================================
# 5️⃣ Data Structures
# ==========================================================

# --------------------------
# Vector
# --------------------------
v <- c(1, 2, 3)
typeof(v)

# Coercion example
v <- c(1, "A", TRUE)
typeof(v)  # character (highest in hierarchy)

# --------------------------
# List
# --------------------------
lst <- list(1, "Hitesh", TRUE, 3.3)
typeof(lst)

# --------------------------
# Matrix
# --------------------------
m <- matrix(c(1,2,3,4,5,6), nrow=2, byrow=TRUE)
typeof(m)

# Matrix operations
m2 <- matrix(1:6, nrow=3)
m %*% m2  # matrix multiplication

# --------------------------
# Array
# --------------------------
arr <- array(1:8, dim=c(2,2,2))
class(arr)

# --------------------------
# Factor
# --------------------------
f <- factor(c("A", "B", "A"))
typeof(f)   # integer
class(f)    # factor

# --------------------------
# Data Frame
# --------------------------
df <- data.frame(
  id = 1:3,
  name = c("A", "B", "C"),
  score = c(80, 75, 90),
  stringsAsFactors = FALSE
)

class(df)
typeof(df)  # list

# ==========================================================
# 6️⃣ Default Values of Types
# ==========================================================

numeric(2)
integer(2)
logical(1)
character(1)
complex(1)
raw(1)
vector("list",1)
factor(character(1))
as.Date(character(1))
as.POSIXct(character(1))

# ==========================================================
# 7️⃣ Type Inspection
# ==========================================================

x <- as.Date("2026-01-13")

typeof(x)   # storage type
class(x)    # object class
mode(x)     # legacy type
str(x)      # structure

# Testing type
is.numeric(23.2)
is.integer(10L)
is.character("A")
is.factor(f)
is.data.frame(df)

# ==========================================================
# 8️⃣ Handling Missing Values
# ==========================================================

# Basic NA
x <- c(10, NA, 30)
is.na(x)

# Typed NA
NA_integer_
NA_real_
NA_character_
NA_complex_

# NA vs NULL
x <- NULL
is.null(x)

# Arithmetic with NA
mean(c(1,2,NA))           # NA
mean(c(1,2,NA), na.rm=TRUE)

# NaN and Inf
0/0        # NaN
1/0        # Inf
is.nan(0/0)
is.finite(1/0)

# ==========================================================
# 9️⃣ Data Type Conversion in R
# ==========================================================

# --------------------------------
# Implicit (Automatic) Conversion
# --------------------------------
# logical → integer → numeric → character

c(TRUE, 5L)
c(10.5, "hello")

# --------------------------------
# Explicit Conversion
# --------------------------------

as.numeric("10")
as.numeric("A")  # NA + warning

as.integer("10")
as.logical(1)
as.character(100)

# NULL conversion
as.numeric(NULL)  # empty numeric vector

# NA conversion
as.numeric(NA)    # NA_real_

# --------------------------------
# Factor Conversion (IMPORTANT)
# --------------------------------
f <- factor(c("10", "20"))

as.numeric(f)  # WRONG (level codes)
as.numeric(as.character(f))  # CORRECT

# --------------------------------
# Date Conversion
# --------------------------------
as.Date("16-01-2025", format="%d-%m-%Y")
as.POSIXct("2025-01-16 10:30:00")

# --------------------------------
# Conversion Inside Data Frame
# --------------------------------
df$score <- as.numeric(df$score)

# ==========================================================
# 🔟 Coercion Hierarchy
# ==========================================================
# logical → integer → numeric → character

TRUE + 5
c(1, "three")
as.logical(42)

# ==========================================================
# 1️⃣1️⃣ Safe Conversion Practices
# ==========================================================

# Suppress warning carefully
suppressWarnings(as.numeric("A"))

# Check before conversion
is.character(x)

# Convert multiple columns
df[] <- lapply(df, as.character)

# ==========================================================
# 1️⃣2️⃣ Common Pitfalls
# ==========================================================

# Wrong NA comparison
# if (x == NA)  # WRONG
# Correct:
if (is.na(x[1])) {
  print("Missing")
}

# Factor trap
f <- factor(c("10", "20"))
as.numeric(f)   # wrong
as.numeric(as.character(f))  # correct

# ==========================================================
# Quiz, Assignment & Resources
# ==========================================================

# Resources:
# https://www.tutorialspoint.com/r/r_data_types.htm
# https://www.r-bloggers.com/2021/04/handling-missing-values-in-r/
# https://bcb420-2022.github.io/R_basics/r-scalars.html#r-data-types

# ==========================================================
# End of File
# ==========================================================