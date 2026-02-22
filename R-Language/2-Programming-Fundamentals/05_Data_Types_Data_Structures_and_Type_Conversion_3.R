############################################################
# 📌 Topic: Data Types, Data Structures & Type Conversion in R
############################################################

# ==========================================================
# 1️⃣ Introduction
# ==========================================================
# Variables store values in memory.
# The operating system allocates memory based on the
# data type of the R object.

# R objects are built from atomic values.
# Based on structure, R objects include:
# - Scalars
# - Vectors
# - Matrices
# - Arrays
# - Lists
# - Data Frames

# R has 6 atomic data types:
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
a <- TRUE
typeof(a)
class(a)

b <- "FALSE"   # character, NOT logical
typeof(b)
class(b)

# --------------------------
# Numeric (double)
# --------------------------
a <- 323
typeof(a)
class(a)

a <- 3.6
typeof(a)
class(a)

# --------------------------
# Integer
# --------------------------
a <- 323L
typeof(a)
class(a)

a <- as.integer(3)

# --------------------------
# Complex
# --------------------------
c <- 3 + 2i
typeof(c)
class(c)

# --------------------------
# Character
# --------------------------
c <- "R is a Super Programming language"
typeof(c)
class(c)

# --------------------------
# Raw
# --------------------------
myraw <- charToRaw("R Programming")
typeof(myraw)
class(myraw)

# ==========================================================
# 3️⃣ Date & Date-Time Types
# ==========================================================

# Date (stores only date)
d <- as.Date("2026-01-13")
typeof(d)   # double
class(d)    # Date

# Time information is discarded
as.Date("2026-01-13 10:30:00")

# POSIXct (recommended for date-time)
t <- as.POSIXct("2026-01-13 10:30:00")
typeof(t)
class(t)

# POSIXlt (list-based, heavy but extractable)
lt <- as.POSIXlt(Sys.time())
lt$sec
lt$min
lt$hour
lt$mday
lt$mon
lt$year

# ==========================================================
# 4️⃣ NULL and NA
# ==========================================================

# NULL → no object
x <- NULL
is.null(x)

# NA → missing value
x <- c(10, NA, 30)
is.na(x)

# NA is NOT equal to NULL or ""
# NA == NULL   ❌ invalid
# NA == ""     ❌ invalid
# Always use is.na()

# ==========================================================
# 5️⃣ Strings
# ==========================================================
# Strings are character values enclosed in quotes

s1 <- 'Hello world'
s2 <- "Hello world"

typeof(s1)
class(s1)

# ==========================================================
# 6️⃣ Data Structures
# ==========================================================

# --------------------------
# Vectors
# --------------------------
v <- c("Hitesh", "B G", "Harsha")
typeof(v)
class(v)

v <- c(1, 2, 3, TRUE)
typeof(v)   # numeric (coercion)

v <- c(1, "A", TRUE)
typeof(v)   # character

# --------------------------
# Lists
# --------------------------
lst <- list(
  1, "Hitesh", TRUE, 3.3, 5L,
  2 + 3i, as.Date("2025-01-01"),
  NULL, NA, c(1,2,3)
)

typeof(lst)
class(lst)

# --------------------------
# Matrices
# --------------------------
m <- matrix(c(1,2,3,4,5,6), nrow=2, byrow=TRUE)
typeof(m)
class(m)

# Matrix operations
m2 <- matrix(c(7,8,9,10,11,12), nrow=3, byrow=TRUE)
m %*% t(m2)

# Element-wise operations
m + m
m * m

# --------------------------
# Arrays
# --------------------------
arr <- array(1:8, dim=c(2,2,2))
class(arr)

# --------------------------
# Factors
# --------------------------
names <- c("Hitesh","Vedha","Harsha","Hitesh")
is.factor(names)

f <- factor(names)
typeof(f)   # integer
class(f)    # factor

# --------------------------
# Data Frames
# --------------------------
stu.data <- data.frame(
  student_id = 14:19,
  student_name = c("Hitesh","vee","vaib","prave","rudresh","sontosh"),
  student_age = c(32,44,34,56,34,23),
  student_class = c("MCA","BCA","BTECH","BE","MTECH","MSC"),
  student_join = as.Date(c(
    "2021-01-20","2022-01-22",
    "2000-03-18","2012-01-11",
    "2022-01-14","2000-03-24")),
  stringsAsFactors = FALSE
)

typeof(stu.data)   # list
class(stu.data)    # data.frame

# ==========================================================
# 7️⃣ Default Values of Types
# ==========================================================

numeric(2)        # 0
integer(2)        # 0L
logical(1)        # FALSE
character(1)      # ""
complex(1)        # 0+0i
raw(1)
vector("list",1)
factor(character(1))
as.Date(character(1))
as.POSIXct(character(1))

# ==========================================================
# 8️⃣ Understanding typeof(), class(), mode(), str()
# ==========================================================

x <- as.Date("2026-01-13")

typeof(x)   # storage
class(x)    # behavior
mode(x)     # legacy
str(x)      # structure

# Factor example
f <- factor(c("A","B","A"))
typeof(f)
class(f)

# ==========================================================
# 9️⃣ Type Testing Functions
# ==========================================================

is.numeric(23.2)
is.integer(10L)
is.character("A")
is.logical(TRUE)
is.factor(f)
is.data.frame(stu.data)
is.matrix(m)

# ==========================================================
# 🔟 Handling Missing Values
# ==========================================================

# Typed NA
NA
NA_integer_
NA_real_
NA_character_
NA_complex_

# Example
x <- c(1, 2, NA)
mean(x)              # NA
mean(x, na.rm=TRUE)  # works

# NA vs NULL
length(c(1, NULL, 2))  # NULL disappears
length(c(1, NA, 2))    # NA preserved

# ==========================================================
# 1️⃣1️⃣ Data Type Conversion in R
# ==========================================================

# --------------------------------
# Implicit Conversion
# --------------------------------
# logical → integer → numeric → character

c(TRUE, 5L)
c(10.5, "hello")

# --------------------------------
# Explicit Conversion
# --------------------------------
as.numeric("10")
as.numeric("A")          # NA + warning
as.integer(3.7)
as.logical(1)
as.character(100)

# NULL vs NA conversion
as.numeric(NULL)         # empty vector
as.numeric(NA)           # NA_real_

# --------------------------------
# Factor Conversion (IMPORTANT)
# --------------------------------
f <- factor(c("10","20"))

as.numeric(f)                 # WRONG
as.numeric(as.character(f))   # CORRECT

# --------------------------------
# Date Conversion
# --------------------------------
as.Date("16-01-2025", format="%d-%m-%Y")
as.POSIXct("2025-01-16 10:30:00")

# --------------------------------
# Data Frame Column Conversion
# --------------------------------
df <- data.frame(
  id = c("1","2","3"),
  age = c("25","30","40"),
  stringsAsFactors = FALSE
)

df$age <- as.numeric(df$age)

# ==========================================================
# 1️⃣2️⃣ Coercion During Operations
# ==========================================================

TRUE + 5
sum(c(TRUE, FALSE, TRUE))
mean(c(TRUE, FALSE))

c(1, 2, "three")
5 == "5"

as.logical(0)
as.logical(42)

# ==========================================================
# 1️⃣3️⃣ Safe Conversion Practices
# ==========================================================

suppressWarnings(as.numeric("A"))

if (is.character(x)) {
  x <- as.numeric(x)
}

df[] <- lapply(df, as.character)

# ==========================================================
# 1️⃣4️⃣ Common Pitfalls
# ==========================================================

# ❌ Wrong
# if (x == NA) { }

# ✅ Correct
if (is.na(x[1])) {
  print("Missing")
}

# Factor trap
f <- factor(c("10","20"))
as.numeric(f)                   # wrong
as.numeric(as.character(f))     # correct

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