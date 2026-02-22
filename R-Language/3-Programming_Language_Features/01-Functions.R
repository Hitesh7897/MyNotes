#===============================================================================
# 📌 Topic : Functions in R
#===============================================================================


################################################################################
# INTRODUCTION
################################################################################

# A function is a set of statements organized together to perform a specific task.
# Functions help:
# - Avoid repetition
# - Reduce complexity
# - Improve readability and maintainability
#
# A function:
# - Is written to perform a specific task
# - May or may not take arguments
# - Contains a body (code)
# - May or may not return a value


################################################################################
# ANATOMY OF A FUNCTION
################################################################################

# Syntax:
# function_name <- function(arg1, arg2, ...) {
#   function_body
# }

# Components:
# 1) Function Name
# 2) Arguments
# 3) Function Body
# 4) Return Value


################################################################################
# BASIC FUNCTION EXAMPLES
################################################################################

# Function without arguments
firstprog <- function() {
  paste("Hello world")
}

firstprog()

# One-line function
firstprog <- function() paste("Hello world")
firstprog()


################################################################################
# FUNCTION TYPES
################################################################################

# 1) Built-in Functions
# 2) User-defined Functions


################################################################################
# BUILT-IN FUNCTIONS
################################################################################

print(seq(4, 20))
print(mean(10:20))
print(sum(10:20))


################################################################################
# USER-DEFINED FUNCTIONS
################################################################################

# Function without arguments
new.square <- function() {
  for (i in 1:5) {
    print(i^2)
  }
}

new.square()

# Function with arguments
new.square <- function(n) {
  for (i in 1:n) {
    print(i^2)
  }
}

new.square(10)


################################################################################
# FUNCTION WITH MULTIPLE ARGUMENTS
################################################################################

new.result <- function(a, b, c) {
  result <- a * b + c
  print(result)
}

new.result(4, 3, 5)


################################################################################
# RETURNING A RESULT
################################################################################

check <- function(x) {
  if (x > 0)
    result <- "positive"
  else if (x < 0)
    result <- "negative"
  else
    result <- "zero"
  return(result)
}

check(4)

# Difference between print() and return()
# - print() displays output
# - return() sends value back to caller

val <- check(4)
val


################################################################################
# RETURNING MULTIPLE VALUES
################################################################################

# R functions return only ONE object
# Use list to return multiple values

cal <- function(a, b) {
  list(
    sum = a + b,
    sub = a - b,
    mul = a * b,
    div = a / b
  )
}

cal(4, 3)


################################################################################
# FUNCTION OVERRIDING & OVERLOADING (AWARENESS)
################################################################################

# Overriding (latest definition wins)
add <- function(a, b) paste("add1", a + b)
add <- function(b, c) paste("add2", b + c)

add(4, 3)

# Overloading is NOT supported in R
# Same name → last definition only


################################################################################
# NESTED FUNCTIONS & SCOPE (LEGB)
################################################################################

x <- "I am Global"
pi <- 100

outer_func <- function() {
  x <- "I am Enclosing"
  inner_func <- function() {
    local_val <- "I am Local"
    print(x)
    print(pi)
  }
  inner_func()
}

outer_func()
print(x)

# Best Practice:
# Never rely on global variables inside functions


################################################################################
# FUNCTION ASSIGNED TO A VARIABLE
################################################################################

a <- 421

display <- function() {
  print(a)
  a <- 32
  return(a)
}

z <- display()
z


################################################################################
# FUNCTION INSIDE ANOTHER FUNCTION
################################################################################

display <- function(name) {
  message <- function() {
    print("hello")
  }
  paste(message(), name)
}

display("ganesh")


################################################################################
# FUNCTION AS PARAMETER
################################################################################

display <- function(name) {
  paste("Hello", name)
}

get_name <- function() "ganesh"

display(get_name())


################################################################################
# RETURNING A FUNCTION
################################################################################

display <- function() {
  message <- function() {
    "hello"
  }
  message()
}

fun <- display()
fun


################################################################################
# PASSING ANY TYPE (do.call)
################################################################################

foo <- function(a, b, c) a + b - c

arg.list <- list(b = 2, c = 5)
do.call(foo, c(list(a = 1), arg.list))


################################################################################
# RECURSION
################################################################################

fact <- function(num) {
  if (num < 0) {
    stop("Factorial not defined for negative numbers")
  } else if (num == 0) {
    1
  } else {
    num * fact(num - 1)
  }
}

fact(4)
factorial(4)


################################################################################
# KEYWORD & DEFAULT ARGUMENTS
################################################################################

average <- function(a = 20, b = 40) {
  a + b / 2
}

average()
average(b = 43)
average(b = 22, a = 23)


################################################################################
# VARIABLE ARGUMENTS (...)
################################################################################

add_all <- function(...) {
  sum(...)
}

add_all(3, 4, 5, 6)


################################################################################
# LAZY EVALUATION
################################################################################

f <- function(x, y) {
  x
}

f(10, stop("Error"))


################################################################################
# ANONYMOUS FUNCTIONS
################################################################################

lapply(1:5, function(x) x^2)


################################################################################
# FUNCTION ENVIRONMENT
################################################################################

environment(add_all)


################################################################################
# ERROR HANDLING
################################################################################

foo <- function(a, b) {
  if (b == 0) stop("Cannot divide by zero")
  a * b
}

# foo(3, 0)


################################################################################
# BYTE COMPILATION
################################################################################

library(compiler)

slow_function <- function(x) {
  total <- 0
  for (i in 1:x) {
    total <- total + i
  }
  total
}

compiled_function <- cmpfun(slow_function)

system.time(slow_function(1e6))
system.time(compiled_function(1e6))


################################################################################
# APPLY FAMILY (INTRO)
################################################################################

# apply(), lapply(), sapply(), vapply(), tapply(), mapply()
# Legacy but still widely used
# purrr is preferred for modern R


################################################################################
# BUILT-IN FUNCTIONS (any / all)
################################################################################

x <- 1:10

any(x < 8)
all(x > 8)


################################################################################
# QUIZ
################################################################################

# 1) Difference between print() and return()?
# 2) Difference between print() and paste()?


################################################################################
# ASSIGNMENT
################################################################################

# Multiple function-writing exercises (see original list)


################################################################################
# RESOURCES
################################################################################

# https://www.oreilly.com/library/view/the-art-of/9781593273842/ch02s05.html
# https://www.datamentor.io/r-programming/return-function
# https://www.dataquest.io/blog/write-functions-in-r


################################################################################
# END OF CHAPTER
################################################################################