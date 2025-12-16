############################# Intro ##########################################

# A variable provides us with named storage thatou programs can manipulate
# A variable in R can store an atomic vector, group of atomic vectors or a combination of many R objects.


############################ Declaration of Variables #########################

# In R, a variable itself is not declared of any data type, rather it gets the data type of the R - object assigned to it
# So R is called a dynamically typed language, which means that we can change a variables data type of the same variable again and again when using it in the program

a <- 2
b <- 2.8
c <- "Hitesh"
d <- "3"
e <- 1+2i

#### To Know which type of variable ###

typeof(a)
typeof(b)
typeof(c)
typeof(d)
typeof(e)


# class() function in R language is used to return the class of data used as the arguments
# The class represents the abstract type of the object

class(a)
class(b)
class(c)
class(d)
class(e)

############# Finding Variables ################################################

print(ls()) # To know all the variables currently available in the workspace, we use the ls() function
print(ls(pattern = "var")) # List of variables starting with the pattern "var
print(ls(all.names = TRUE)) # The variables starting with dot(.) are hidden, they can be listed using "all.names = TRUE" argument to ls() function

#### Checking the variables using exist function ###############################

a <- 6
exists("a")

############################## Deleting / removing variables ###################

rm(var.3) # Variable can be deleted by using the rm() function.
print(var.3)
rm(x)
rm(x, y) # To remove more than one variable
rm(list = ls()) # All the variables can be deleted by using the rm() and ls() function together

################ Pros and Cons of Dynamic Typing ###############################

# Pros of Dynamic Typing
# Very Easy to Work with
# Faster development time

# Cons of Dynamic Typing
# may result in unexpected bugs!
# you need to be aware of typeof()

################### Assigning values to Variables ##############################

# The variables can be assigned values using leftward, rightward and equal operator
# The values of the variable can be printed using print() or cat() function. The cat() combines multiple items into a continuous print output

# Assignment using equal operator

var1 = c(0, 1, 2, 3)

# Assigning using leftward operator

var2 <- c("I am ", "Hitesh")

# Assigning using righthand operator

c(TRUE, 1) -> var3 # TRUE and 1 is a mixed types

print(var1)
cat("var 1 is ", var1, "\n")
cat("Var 2 is ", var2, "\n")
cat("Var3 is ", var3, "\n")

#### Multiple Assignment

# R allows us to assign a value to multiple variables in a single statement which is also know as multiple assignment

# 1. Assigning single value to multiple variables

x=y=z=5
print(x)
print(y)
print(z)

# 2. Assigning multiple values to multiple variables is not allowed in R like

a, b, c = 3, 4, 5

###################### Rule and Name Conventions ###############################

# Has letters, numbers, dot and underscore
var_name2

# Does not have the character "&", only dot(.) and underscore allowed
var_name%

# Does not start with a number
2var_name

# can start with a dot but the dot should not be followed by a number
.var_name,
.var.name

# The starting dot followed by a number makes it invalid
.2var_name

# Starts with _ which is not allowed
_var_name

############################## Conventions #####################################

myVariable # camel case
myVariable_ #Temporary case

############################### Variable Scope #################################

# In Programming language, variables need to be defined before using them
These variables can only be accessed in their area where thy are defined, this is called scope

# Types of Scope
# 1. Global Variables
# 2. Local Variables

###### Global Variables

# As the name suggested, Global Variables can be accessed from any part of the program.
# They are available throughout the lifetime of a program
# They are declared anywhere in the rogram outside all of the functions or blocks.
# Declaring global variables : Global Variables are usually declared outside of all of the functions and blocks. They can be accessed from any portion of the program

a <- 7 # global variables

# Creating a function

display <- function(){
  print(a) # accessing the global variable
}

display() # calling the function

# Changing the value of global variable
a <- 10
print(a)

###### Local Variables

# Variable defined within a function or block are said to be local to those functions.
# Local variables do not exist outside the block in which they are declared, i.e they can not be accessedor used outside the block
# Declaring local variables : Local variables are declared inside a block

a <- 7

# Creating a function

display <- function(){
  print(a) # accessing the global variable
  b <- 6 # assing a local variable
  print(b) # accessing the local variable
}

display() # calling the function

###### changing the value of global variable

a <- 10
print(a)
print(b)

# Cannot change the local variable and it assumes it as a new variable