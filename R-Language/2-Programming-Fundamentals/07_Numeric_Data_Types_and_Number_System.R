############################################################
# 📌 Topic: Numeric Data Types & Number Systems in R
############################################################

# ==========================================================
# 1️⃣ Introduction
# ==========================================================
# Numeric data types store numeric values.
# They are immutable — modifying a number creates a new object in memory.
#
# In R, numbers are stored as:
# - numeric (double precision, default)
# - integer
# - complex

# Object creation
x <- 32
.Internal(inspect(x))  # Shows internal memory details (advanced)

y <- 33
.Internal(inspect(y))

y <- 32
.Internal(inspect(y))  # Memory reused (R optimization)

# Remove objects from memory
a <- 3
b <- "ga"
rm(a, b)

# ==========================================================
# 2️⃣ Numeric Data Types
# ==========================================================

# Default numeric (double)
x <- 10
typeof(x)     # "double"
class(x)      # "numeric"

# Integer (use L suffix)
y <- 10L
typeof(y)     # "integer"
class(y)

# Complex
z <- 3 + 2i
typeof(z)
class(z)

# ==========================================================
# 3️⃣ Type Conversion (Casting)
# ==========================================================

# Type conversion = changing data type of object

# Two types:
# 1) Implicit (automatic)
# 2) Explicit (manual)

# --------------------------
# 3.1 Implicit Conversion
# --------------------------
# R follows coercion hierarchy:
# logical → integer → numeric → complex → character

xx <- c(1.7, "a")
xx

xx <- c(TRUE, 2)
xx

xx <- c("a", TRUE)
xx

# Comparisons with coercion
1 < "2"     # TRUE
"1" > 2     # FALSE

# --------------------------
# 3.2 Explicit Conversion
# --------------------------

as.numeric(43L)
as.integer(32.2)
as.character(100)
as.vector(list(3,2,4))
as.matrix(c(2,3,3,2))
as.data.frame(list(a=32, b=3))

# Data loss example
as.integer(3.9)   # 3 (decimal truncated)

# ==========================================================
# 4️⃣ Built-in Numeric Functions
# ==========================================================

# Absolute value
abs(-394)

# Ceiling
ceiling(4.323)

# Floor
floor(3.455)

# Logarithm
log10(3.32)    # Base 10
log(3.32)      # Natural log

# Truncate
trunc(5.99)

# Round
round(2.36222, digits=2)

# Significant digits
signif(2.323, digits=4)

# Exponential
exp(2)

# Trigonometry
sin(3)
cos(3)
tan(3)

# Square root
sqrt(4)

# Sum
a <- c(0:10, 40)
sum(a)

# Mean
mean(a)

# Standard deviation
sd(a)

# Median
median(a)

# Range
range(a)

# Difference between elements
diff(a)

# Scaling (standardization)
m <- matrix(1:9, 3, 3)
scale(m)

# Constant PI
pi

# ==========================================================
# 5️⃣ Statistical Distribution Functions
# ==========================================================

# Normal Distribution
x <- seq(-3, 3, by=0.1)
y <- dnorm(x)
plot(x, y, type="l", main="Normal Distribution")

# Cumulative Normal
pnorm(1.5)

# Quantile Normal
qnorm(0.95)

# Random Normal
rnorm(10)

# Binomial
dbinom(2, size=5, prob=0.5)
pbinom(2, size=5, prob=0.5)
qbinom(0.5, size=5, prob=0.5)
rbinom(5, size=5, prob=0.5)

# Poisson
dpois(2, lambda=3)
ppois(2, lambda=3)
rpois(5, lambda=3)

# Uniform
dunif(0.5)
punif(0.5)
qunif(0.5)
runif(5)

# ==========================================================
# 6️⃣ Random Number Generation
# ==========================================================

# Random decimal
runif(1, 5, 7.5)

# Multiple random numbers
runif(4, 5, 7.5)

# Random integer
sample(1:10, 1)

# Random with replacement
sample(1:10, 5, replace=TRUE)

# Random without replacement
sample(1:40, 6, replace=FALSE)

# View seed
.Random.seed

# ==========================================================
# 7️⃣ Number System Conversions
# ==========================================================

# --------------------------
# Decimal (Base 10)
# --------------------------
a <- 363

# --------------------------
# Binary
# --------------------------
# Convert integer to binary using base functions
intToBits(10)

# Better readable binary
paste(rev(as.integer(intToBits(10))[1:8]), collapse="")

# --------------------------
# Hexadecimal
# --------------------------
sprintf("%x", 255)

# Hex to integer
strtoi("FF", base=16)

# --------------------------
# Octal
# --------------------------
as.octmode(16)

# Convert octal to integer
strtoi("20", base=8)

# ==========================================================
# 8️⃣ Boolean (Logical Type)
# ==========================================================

x <- FALSE
y <- TRUE

1 == TRUE
TRUE + 4     # 5
FALSE + 10   # 10

# Logical coercion
as.logical(1)
as.logical(0)

# ==========================================================
# 9️⃣ ASCII & Unicode
# ==========================================================

# Convert text to numeric codes
test <- utf8ToInt("Apples")
test

# Convert back
intToUtf8(test)

# ASCII table reference:
# http://www.asciitable.com/

# ==========================================================
# 🔟 Key Takeaways
# ==========================================================

# - Default numeric type in R is double
# - Integers require L suffix
# - R follows strict coercion hierarchy
# - Many statistical functions follow pattern:
#     d = density
#     p = cumulative probability
#     q = quantile
#     r = random generation
# - Base conversion can be done using:
#     intToBits()
#     sprintf()
#     strtoi()

# ==========================================================
# Quiz
# ==========================================================

# 1) What is typeof(10)?
# 2) What happens when you combine TRUE and 3?
# 3) Difference between log() and log10()?
# 4) Why does as.integer(3.9) return 3?
# 5) What does rnorm(5) generate?

# ==========================================================
# Assignment
# ==========================================================

# 1) Generate 100 random normal numbers and plot histogram.
# 2) Convert 255 to binary and hexadecimal.
# 3) Create a vector with numeric + character and observe coercion.
# 4) Demonstrate difference between floor(), ceiling(), and trunc().
# 5) Convert a sentence to ASCII and back.

# ==========================================================
# Resources
# ==========================================================
# https://www.statmethods.net/management/typeconversion.html
# https://rforexcelusers.com/calculate-percent-column-r/
# https://blog.revolutionanalytics.com/2009/02/how-to-choose-a-random-number-in-r.html
# https://www.datasciencemadesimple.com/range-function-in-r/
############################################################

###############################################
# END OF FILE
###############################################