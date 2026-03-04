#===============================================================================
# 📌 Topic : Exception Handling in R – Conditions, try(), tryCatch() & Safety
#===============================================================================
# Topics Covered
# --------------
# 1. Exception Handling Concept
# 2. Types of Conditions in R
# 3. try() – Basic Error Handling
# 4. tryCatch() – Advanced Error Handling
# 5. Custom Error Creation
# 6. withCallingHandlers()
# 7. Global Error Handling (options)
# 8. stopifnot()
# 9. Suppressing Warnings and Messages
# 10. Condition Signaling (Advanced)
#===============================================================================


###############################################
# 1. Exception Handling
###############################################
# Exception handling is the process of anticipating,
# detecting, and managing runtime errors or warnings
# so that R programs:

# • Do NOT crash abruptly
# • Produce meaningful messages
# • Continue execution safely when possible



###############################################
# 2. Types of Conditions in R
###############################################
# In R, errors belong to a broader system called
# "conditions".

# Type        Stops Execution?   Purpose
# ------------------------------------------------
# message()   No                 Informational message
# warning()   No                 Suspicious condition
# stop()      Yes                Fatal error



###############################################
# message() – Informational Messages
###############################################
# Used to notify the user.

message("Data loaded successfully")

# Compared to print():
# print() → shows object content
# message() → plain notification

# Execution continues normally



###############################################
# warning() – Non-Fatal Problems
###############################################
# Warning indicates something suspicious.

sqrt(-1)

# Code continues execution

# Custom warning

warning("Column has missing values")

# Example: In SDTM datasets some variables may be optional.



###############################################
# stop() – Fatal Errors
###############################################
# Immediately stops execution.

if (!file.exists("data.csv")) {
  stop("File not found!")
}



###############################################
# 3. try() – Basic Error Handling
###############################################
# Prevents code from stopping completely.

try(log("a"))   # produces error

# Store result

result <- try(log("a"))

print(result)

# Detect error

if (inherits(result, "try-error")) {
  print("Error occurred")
}

# Silent mode

try(log("a"), silent = TRUE)



###############################################
# Real-Time Example (Batch Processing)
###############################################

files <- c("file3.csv", "file.csv", "file1.csv", "file2.csv")

for (f in files) {
  try(read.csv(f))
  print("hello")
}

# If one file fails → loop continues



###############################################
# 4. tryCatch() – Advanced Error Handling
###############################################
# Most powerful error handling function.

tryCatch(
  expr,
  error   = function(e) {},
  warning = function(w) {},
  message = function(m) {},
  finally = {}
)



###############################################
# Handling Errors
###############################################

tryCatch(
  {
    log("a")
  },
  error = function(e) {
    print("Error occurred")
    print(e$message)
  }
)



###############################################
# Handling Warnings Separately
###############################################

tryCatch(
  {
    sqrt(-1)
  },
  warning = function(w) {
    print("Warning caught!")
    print(w$message)
  }
)



###############################################
# Using finally
###############################################
# finally always executes

tryCatch(
  {
    log("a")
  },
  error = function(e) {
    print("Error handled")
  },
  finally = {
    print("Cleanup activity done")
  }
)



###############################################
# 5. Custom Error Creation
###############################################

my_function <- function(x) {
  
  if (x < 0) {
    
    stop(structure(
      list(message = "Negative value not allowed"),
      class = c("custom_error", "error", "condition")
    ))
    
  }
  
}

# Handling custom error

tryCatch(
  my_function(-5),
  custom_error = function(e) {
    print("Custom error handled")
  }
)



###############################################
# Real Production Example (SDTM Validation)
###############################################

validate_numeric <- function(x) {
  
  tryCatch(
    {
      if (!is.numeric(x)) {
        stop("Input must be numeric")
      }
      
      mean(x)
    },
    
    error = function(e) {
      return(NA)
    }
    
  )
  
}

validate_numeric(1)
validate_numeric(-1)
validate_numeric("abc")



###############################################
# 6. withCallingHandlers()
###############################################
# Handles warnings while allowing execution
# to continue.

withCallingHandlers(
  
  sqrt(-1),
  
  warning = function(w) {
    print("Warning intercepted")
    invokeRestart("muffleWarning")
  }
  
)



###############################################
# 7. Global Error Handling (options)
###############################################

# Show traceback automatically

options(error = traceback)

# Interactive debugging mode

options(error = recover)

# Reset to default behavior

options(error = NULL)



###############################################
# 8. stopifnot()
###############################################
# Quick validation tool.

stopifnot(is.numeric(5))

# Example failure

stopifnot(is.numeric("a"))



###############################################
# 9. Suppressing Warnings and Messages
###############################################

# Suppress warnings

suppressWarnings(sqrt(-1))

# Suppress messages

suppressMessages(library(dplyr))

# Use carefully in production.



###############################################
# 10. Condition Signaling (Advanced)
###############################################
# Manually trigger conditions.

signalCondition(simpleWarning("Manual warning"))

# Mostly used in package development.



###############################################
# Practical Production-Level Example
###############################################

process_file <- function(file) {
  
  tryCatch(
    
    {
      
      if (!file.exists(file)) {
        stop("File does not exist")
      }
      
      data <- read.csv(file)
      
      if (nrow(data) == 0) {
        warning("File is empty")
      }
      
      mean(data$value)
      
    },
    
    error = function(e) {
      
      message(paste("Error in file:", file))
      return(NULL)
      
    },
    
    warning = function(w) {
      
      message(paste("Warning in file:", file))
      return(NA)
      
    },
    
    finally = {
      
      message(paste("Finished processing:", file))
      
    }
    
  )
  
}



###############################################
# Test Execution
###############################################

process_file("file.csv")
process_file("file1.csv")
process_file("file2.csv")
process_file("file3.csv")
process_file("abcd.csv")



###############################################
# Batch Processing Example
###############################################

files <- c("file3.csv","file.csv","file1.csv","file2.csv")

lapply(files, process_file)

# Script never crashes
# Errors logged
# Warnings handled
# Cleanup always runs



###############################################
# When to Use What
###############################################

# Situation             Recommended Tool
# ------------------------------------------------
# Simple protection     try()
# Production scripts    tryCatch()
# Package development   Custom conditions
# Debugging             options(error = recover)
# Quick validation      stopifnot()



###############################################
# Quiz
###############################################



###############################################
# Assignment
###############################################



###############################################
# Resources
###############################################

# https://www.geeksforgeeks.org/handling-errors-in-r-programming/
# https://www.r-bloggers.com/2012/10/error-handling-in-r/
# https://medium.com/analytics-vidhya/error-handling-in-r-23b22d82fa6f
# https://subscription.packtpub.com/book/big_data_and_business_intelligence/9781784390815/1/ch01lvl1sec18/handling-errors-in-a-function


###############################################
# END OF FILE
###############################################