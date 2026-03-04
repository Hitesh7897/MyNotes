#===============================================================================
# 📌 Topic : Debugging in R – Errors, Tools & Professional Workflow
#===============================================================================
# Topics Covered
# --------------
# 1. What is Debugging
# 2. Types of Errors in R
# 3. Basic Debugging Tools
# 4. Structured Debugging Approach
# 5. Debugging with try() and tryCatch()
# 6. Logging for Debugging
# 7. Advanced Debugging Tools
# 8. RStudio Debugger
# 9. Performance Debugging
# 10. Defensive Programming
#===============================================================================


###############################################
# 1. What is Debugging
###############################################
# Debugging = Identifying + Isolating + Fixing errors
# or unexpected behavior in code.

# In R, problems usually fall into these categories:

# Type               Meaning                          Example
# ------------------------------------------------------------------------------
# Syntax Error       Code written incorrectly          Missing ')'
# Runtime Error      Error during execution            Subscript out of bounds
# Logical Error      Code runs but wrong output        Wrong filter condition
# Performance Issue  Code runs slowly                  Loop instead of vectorization


###############################################
# 2. Types of Errors in R
###############################################

#----------------------------------------------
# A. Syntax Error
#----------------------------------------------
# Missing closing bracket

# mean(c(1,2,3)
# Error: unexpected end of input


#----------------------------------------------
# B. Runtime Error
#----------------------------------------------
x <- c(1,2,3)
x[5]     # Subscript out of bounds


#----------------------------------------------
# C. Logical Error
#----------------------------------------------
x <- c(1,2,3,4)

mean(x[x > 10])
# No error, but returns NaN → logical mistake



###############################################
# 3. Basic Debugging Tools in R
###############################################

#===============================================================================
# traceback()
#===============================================================================
# Shows the function call stack after an error

f1 <- function(x) f2(x)

f2 <- function(x) {
  log(x)
}

f1("text")

traceback()

# Output shows:
# f1 -> f2 -> log
# Meaning error occurred in log()


# In RStudio:
# Debug Menu → On Error → Error Inspector



###############################################
# browser()  (Most Important Tool)
###############################################
# Pauses execution and allows inspection

calculate_mean <- function(x) {
  browser()
  mean(x)
}

calculate_mean(c(1,2,"a"))

# Inside browser console

class(x)

# Browser commands

# n  → Next line
# c  → Continue execution
# Q  → Quit
# where → Show call stack



###############################################
# debug()
###############################################
# Automatically step into a function

debug(mean)
mean(c(1,2,3))


###############################################
# debugonce()
###############################################
# Debug only the next function call

f1 <- function(x) f2(x)

f2 <- function(x) {
  log(x)
}

debugonce(f1)

f1("text")



###############################################
# recover()
###############################################
# Powerful debugging tool in production

# Change R's error behavior
options(error = recover)

f1 <- function(x) f2(x)

f2 <- function(x) {
  log(x)
}

f1("text")

# R will show numbered call stack frames

# Turn off recover
options(error = NULL)



###############################################
# Debugging Tools Summary
###############################################

# Tool        Action                         Best Use
# -------------------------------------------------------------
# traceback() Shows call stack                Locate error source
# debugonce() Step through function           Observe logic flow
# recover()   Inspect nested function frames  Complex debugging



###############################################
# 4. Structured Debugging Approach
###############################################

# Professional workflow when error occurs

# Step 1 → Read the FULL error message
# Step 2 → Use traceback()
# Step 3 → Insert browser()
# Step 4 → Inspect object structure
# Step 5 → Validate assumptions
# Step 6 → Write defensive code



###############################################
# 5. Real-World Example (Clinical AGE Derivation)
###############################################

# Manual calculation

a <- difftime(
  as.Date("2026-02-25"),
  as.Date("1983-06-13"),
  units = "days"
)

round(as.numeric(a)/365)



# Function Example

derive_age <- function(dob, ref_date) {
  
  age <- difftime(ref_date, dob, units = "days") / 365
  
  return(round(age))
}

derive_age("1983-06-13", "2026-02-22")



###############################################
# Debugging the Function
###############################################

derive_age <- function(dob, ref_date) {
  
  browser()
  
  age <- difftime(ref_date, dob, units = "days") / 365
  
  return(round(age))
}

derive_age("1983-06-13", "2026-02-22")


# Inspect variables

class(dob)
class(ref_date)

# Problem → both are character



###############################################
# Fix the Code
###############################################

derive_age <- function(dob, ref_date) {
  
  dob <- as.Date(dob)
  ref_date <- as.Date(ref_date)
  
  age <- as.numeric(
    difftime(ref_date, dob, units = "days")
  ) / 365
  
  return(round(age))
}

derive_age("1983-06-13","2026-02-22")



###############################################
# 6. Debugging Data Issues
###############################################

df <- data.frame(
  USUBJID = c("01","02","03"),
  AGE = c(34, NA, 45)
)

mean(df$AGE)

summary(df$AGE)

is.na(df$AGE)

# Fix

mean(df$AGE, na.rm = TRUE)



###############################################
# 7. Debugging Loops
###############################################

x <- 1:5

for(i in 1:length(x)){
  print(x[i+1])
}

# Debug version

for(i in 1:length(x)){
  browser()
  print(x[i+1])
}

# Problem when i = 5 → x[6]

# Fix

for(i in 1:(length(x)-1)){
  print(x[i+1])
}



###############################################
# 8. Debugging with try() and tryCatch()
###############################################

read_file <- function(file){
  read.csv(file)
}

read_file("c:\\ganesh.csv")

# Safer version

read_file <- function(file){
  
  tryCatch(
    {
      read.csv(file)
    },
    
    error = function(e){
      message("File not found: ", e$message)
      return(NULL)
    }
    
  )
}

read_file("c:\\ganesh.csv")



###############################################
# 9. Logging for Debugging
###############################################

# Instead of print()

print("Processing started")

# Use professional logging

library(logger)

log_info("Processing started")
log_error("File missing")

# Advantages
# Timestamp
# Log levels
# Production ready



###############################################
# 10. Advanced Debugging Tools
###############################################

# Check structure

str(df)


# dput() → reproducible debugging

my_data <- data.frame(
  id = c("1","2","text"),
  value = c(10,20,30)
)

dput(my_data)

# Generates reproducible R code



###############################################
# 11. RStudio Debugger
###############################################

# Steps

# 1 Set breakpoint
# 2 Run function
# 3 Step into / step over
# 4 Inspect environment pane



###############################################
# 12. Performance Debugging
###############################################

system.time()

Rprof()

profvis::profvis()



###############################################
# Slow Function Example
###############################################

slow_function <- function(n){
  
  vec <- c()
  
  for(i in 1:n){
    
    vec <- c(vec, i)
    
  }
  
  return(vec)
}

system.time(slow_function(50000))



###############################################
# Profiling with profvis
###############################################

profvis::profvis({
  
  slow_function(50000)
  
})



###############################################
# Faster Version
###############################################

fast_function <- function(n){
  
  vec <- numeric(n)
  
  for(i in 1:n){
    
    vec[i] <- i
    
  }
  
  return(vec)
}

system.time(fast_function(50000))



###############################################
# 13. Defensive Programming
###############################################

number_check <- function(a){
  
  if(!is.numeric(a)){
    
    stop("x must be numeric")
    
  } else {
    
    message("this is numeric")
    
  }
  
}

number_check(1)

number_check("32")



###############################################
# Assertions
###############################################

stopifnot(!is.numeric("ga"))



###############################################
# Professional Debugging Checklist
###############################################

# ✔ Check error message
# ✔ Use traceback()
# ✔ Check input data
# ✔ Validate column names
# ✔ Validate data types
# ✔ Check missing values
# ✔ Reproduce with small sample
# ✔ Add logging
# ✔ Write unit tests



###############################################
# Real Corporate Scenario Example
###############################################

process_data <- function(df){
  
  df$AGEGRP <- ifelse(df$Age > 65,"OLD","YOUNG")
  
  return(df)
  
}

process_data(df)

# Debug

names(df)

# Fix column name

df$AGEGRP <- ifelse(df$AGE > 65,"OLD","YOUNG")

df



###############################################
# References
###############################################

# https://www.ptutorials.com/elearning/r/rdebugging.php
# https://www.geeksforgeeks.org/r-language/debugging-in-r-programming/


###############################################
# END OF FILE
###############################################