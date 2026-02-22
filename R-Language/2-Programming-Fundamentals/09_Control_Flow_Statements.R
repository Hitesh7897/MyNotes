#===============================================================================
# 📌 Topic : Control Flow in R
#===============================================================================


################################################################################
# INTRODUCTION
################################################################################

# Control flow statements govern the flow (order) of execution in a program.
# By default, R executes code sequentially.
# Control flow allows conditional execution, repetition, and transfer of control.


################################################################################
# TYPES OF STATEMENTS
################################################################################

# 1) Selection (Conditional) Statements
# 2) Iteration Statements
# 3) Transfer Statements
# 4) Other Statements
# 5) Quiz
# 6) Assignment
# 7) Resources


################################################################################
# SELECTION (CONDITIONAL) STATEMENTS
################################################################################

# Decision making is the backbone of programming.
# It allows execution of code blocks based on conditions (TRUE / FALSE).

# Types:
# - if
# - if ... else
# - if ... else if ... else
# - switch


################################################################################
# IF STATEMENT
################################################################################

# Executes code only if the condition is TRUE.

# Syntax:
# if (condition) {
#   statements
# }

if (TRUE) {
  print("it is true")
}


# Example 1: Check even number
num <- as.integer(readline("Enter the number: "))

if (num %% 2 == 0) {
  print("This is an even number")
}


# Example 2: Largest of three numbers
a <- 2
b <- 3
c <- 2

if (a > b) {
  cat("a is largest\n")
}

if (b > a) {
  cat("b is largest\n")
}

if (c > a) {
  cat("c is largest\n")
}


# Common Mistakes
# - Using vectors instead of single logical values
# - Forgetting {}

# Best Practices
# - Keep conditions simple
# - Use if for single decisions only

# When to Use / Avoid
# - Use for single checks
# - Avoid for vector logic


################################################################################
# IF ... ELSE STATEMENT
################################################################################

# Provides an alternative execution path when condition is FALSE.

# Syntax:
# if (condition) {
# } else {
# }

# Example 1: Voting eligibility
age <- 43

if (age > 18) {
  cat("You are eligible to vote\n")
} else {
  cat("You are not eligible to vote\n")
}


# Example 2: Even or Odd
num <- 3

if (num %% 2 == 0) {
  print("The number is even")
} else {
  print("The number is odd")
}


# Common Mistakes
# - Missing else block
# - Misaligned braces


################################################################################
# IF ... ELSE IF ... ELSE STATEMENT
################################################################################

# Used to evaluate multiple conditions sequentially.

# Syntax:
# if (condition1) {
# } else if (condition2) {
# } else {
# }

# Example 1: Number comparison
num <- 20

if (num == 10) {
  print("Number is equal to 10")
} else if (num == 50) {
  print("Number is equal to 50")
} else if (num == 100) {
  print("Number is equal to 100")
} else {
  print("Number is not 10, 50, or 100")
}


# Example 2: Student grading system
# A  : > 85 & <= 100
# B+ : > 60 & <= 85
# B  : > 40 & <= 60
# C  : > 30 & <= 40
# F  : <= 30

marks <- 40

if (marks > 85 & marks <= 100) {
  print("Grade A")
} else if (marks > 60 & marks <= 85) {
  print("Grade B+")
} else if (marks > 40 & marks <= 60) {
  print("Grade B")
} else if (marks > 30 & marks <= 40) {
  print("Grade C")
} else {
  print("Fail")
}

# Real-World Example
# Credit risk classification

# Best Practice
# Order conditions from most specific to least


################################################################################
# IFELSE() – VECTORIZED CONDITIONAL
################################################################################

# Vectorized conditional logic
x <- c(1, 3, 4, 5, 6, 7, 4, 3, NA)
ifelse(x > 0, "Positive", "Negative")

# Real-World Example
# Flagging outliers in datasets

# Common Mistake
# Using ifelse() with complex objects


################################################################################
# HANDLING NA IN CONDITIONS
################################################################################

x <- NA

if (is.na(x)) {
  x <- 0
  print(x)
}

# WRONG:
# if (x == NA)


################################################################################
# SWITCH STATEMENT
################################################################################

# Used for menu-based or mapped selection logic.

# Syntax:
# switch(expression, case1, case2, ...)

# Example 1: Index-based switch
y <- 3
x <- switch(
  y,
  "Hitesh",
  "B G",
  "Harsha",
  "Mukesh"
)

print(x)


# Example 2: Character-based switch
x <- 1
y <- 2

a <- switch(
  paste(x, y, sep = ""),
  "11" = "Hello 11",
  "12" = "Hello 12",
  "22" = "Hello 22",
  "66" = "Hello 66"
)

print(a)


# Example 3: Calculator
a <- "14"
x <- 1
y <- 2

m <- switch(
  a,
  "12" = cat("Addition:", x + y, "\n"),
  "13" = cat("Subtraction:", x - y, "\n"),
  "14" = cat("Multiplication:", x * y, "\n"),
  "15" = cat("Division:", x / y, "\n")
)


################################################################################
# ITERATION STATEMENTS
################################################################################

# Used when code must run repeatedly.
# Types:
# - for
# - while
# - repeat


################################################################################
# FOR LOOP
################################################################################

# Used when number of iterations is known.

for (i in 1:10) {
  print("hello")
}


# Iterating a vector
names <- c("Hitesh", "B G", "Kumar", "Harshaesh")
for (i in names) {
  print(i)
}


# Iterating a list
lst <- list("Hitesh", 12, TRUE, 12L)
for (i in lst) {
  print(i)
}


# Iterating a matrix
mat <- matrix(c("Hitesh", "B G", "Kumar", "Harshaesh"),
              nrow = 2, byrow = TRUE)

for (r in 1:nrow(mat)) {
  for (c in 1:ncol(mat)) {
    print(paste("mat[", r, ",", c, "] =", mat[r, c]))
  }
}


# Count even numbers
x <- c(2, 5, 8, 11, 44, 67, 12)
count <- 0

for (val in x) {
  if (val %% 2 == 0) count <- count + 1
}

print(count)


################################################################################
# WHILE LOOP
################################################################################

# Runs while condition is TRUE.

i <- 1
while (i < 10) {
  print(i)
  i <- i + 1
}


# Real-World Example
account_balance <- 1000
monthly_fee <- 200

while (account_balance > 0) {
  account_balance <- account_balance - monthly_fee
  print(account_balance)
}


################################################################################
# REPEAT LOOP
################################################################################

# Runs at least once; exits using break.

v <- c("Hello", "World", "Bangalore")
cnt <- 1

repeat {
  print(v[cnt])
  cnt <- cnt + 1
  if (cnt > length(v)) break
}


################################################################################
# TRANSFER STATEMENTS
################################################################################

# break – exit loop
# next  – skip iteration


################################################################################
# GUARD CLAUSES
################################################################################

# Nested approach (harder to read)
calculate_log <- function(x) {
  if (is.numeric(x)) {
    if (x > 0) {
      return(log(x))
    } else {
      stop("x must be positive")
    }
  } else {
    stop("x must be numeric")
  }
}


# Guard clause approach (recommended)
calculate_log <- function(x) {
  if (!is.numeric(x)) stop("x must be numeric")
  if (x <= 0) stop("x must be positive")
  log(x)
}


################################################################################
# APPLY FAMILY (FUNCTIONAL CONTROL FLOW)
################################################################################

# lapply()
lapply(1:5, sqrt)

# apply()
m <- matrix(1:6, nrow = 2)
apply(m, 2, sum)

# sapply()
sapply(1:5, sqrt)

# vapply()
vapply(1:3, sqrt, numeric(1))


################################################################################
# PRACTICAL INSIGHTS
################################################################################

# - Prefer vectorization over loops
# - Avoid nested if-else
# - Handle NA explicitly
# - Modularize control logic
# - Use apply/purrr for scalability


################################################################################
# ASSIGNMENT
################################################################################

# https://github.com/HiteshB GNN/MyNotes/blob/master/R_Language/2-Programming_Fundamentals/Assignments/Assignment_controlFlows.pdf


################################################################################
# RESOURCES
################################################################################

# https://www.tutorialspoint.com/r/r_decision_making.htm
# https://www.tutorialspoint.com/r/r_loops.htm


################################################################################
# END OF CHAPTER
################################################################################