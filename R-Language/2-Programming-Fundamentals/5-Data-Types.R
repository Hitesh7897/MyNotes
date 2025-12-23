######################### Introduction #########################################

# In Programming languages, we need to use various variables to store various information. Variables are the reserved memory location to store values. As we create a variable in our program, some space is reserved in memory.
# In R, there are several data types such as integer, string, etc. The operating system allocates memory based upon the data type of the variable and decides what can be stored in the reserved memory.

# R objects can be composed of different kinds of data according to the type and number of "atomic" values they contain:

# Scalar items are single values;
# Vectors are ordered sequences of scalars, they must all have the same "data type" (eg: numeric, logical, character)
# Matrices are vectors for which one or more "dimension(s)" have been defined;
# "Data frames" are spreadsheet like objects, their columns are like vectors and all columns must have the same length, but within one data frame, columns can have different data types. They are the most commonly used type of object to hold data;
# Lists are more general collection of data items, the can contain items of any type and lind, including matrices, functions, data frames, and other lists.

# In R, there are 6 data types

# 1. Numeric
# 2. Integer
# 3. Logical
# 4. Complex
# 5. Characters
# 6. Raw

########################### Data Types #########################################

###### Logic

# It is special data type for data with only two possible values which can be constructed as true/false

mylogical <- TRUE
mylogical2 <- FALSE
cat("mylogical", mylogical, "\n") #Printing the output
class(mylogical) #type of the variable

###### Numeric

# Decimal value is called numeric in R, and it is the default computational data type.

# Using normal
mynumeric <- 3232
cat("mynumeric",mynumeric, "\n")
class(mynumeric)

#decimal

mynumeric <- 3.2 # for decimal
cat("mynumeric", mynumeric, "\n")
class(mynumeric)

###### Integer

# Here, L tells R to store the value as Integer,

myinteger <- 322L # prefix if it is integer
cat("myinteger", myinteger, "\n")
class(myinteger)


###### Complex

# A complex value in R is defined as the pure imaginary value i.

mycomplex <- 3+2i
cat(mycomplex)
class(mycomplex)


####### Character

# In R Programming, a character is used to represent string values. we convert objects into character values with the help of as.character() function

# Using double quotes

mychar <- "R is a Super Programming Language"
cat(mychar, "\n")
class(mychar)

# Use Single quotes also

mychar <- 'R is a Super Programming Language'
cat(mychar, "\n")
class(mychar)

###### Raw

# A raw data type is used to hold raw bytes

myraw <- charToRaw("R is a super programming Language")
cat(myraw, "\n")
class(myraw)

###### Default value of Types

#for number
a=0

#for string
a = ""

# To Know the type of variable used

# There are two ways

# typeof() function in R Language is used to return the types of data used as the arguments
typeof(a)
typeof(b)
typeof(c)
typeof(d)
typeof(e)

# class() function in R Language is used to return the class of data used as the arguments

class(a)
class(b)
class(c)
class(d)
class(e)

# To test the data type
# use is methods

is.numeric(23.2)
is.integer(32)
is.character("2")
is.vector(4)
is.matrix()
is.data.frame()
is.logical(0)

################### Difference between typeof and class() ######################

# normal variable level
myVariable <- rpois(20,2)
myVariable
typeof(myVariable)
class(myVariable)

# There is a difference in using dataframe level

df1 <- data.frame(myVariable)
df1
typeof(df1)
class(df1)


############################## Strings #########################################

# Strings are group of characters written inside a single or double quotes
# Internally R stores everything within a double quotes even when you create them with single quotes

"Hello World!"
'Hello World!'

# Using double Quotes
myChar <- "R is a super programming language"
cat(myChar, '\n')
class(myChar)

# Using single quotes

myChar <- 'R is a super programming language'
cat(myChar, '\n')
class(myChar)

########################## Data Structure or Sequence Types ####################

# In Computer Science, a data structure is a data organization, management, and storage format that enables efficient access and modification
# More precisely, a data structure is a collection of data values, the relationship among them, and the functions and organizations that can be applied to the data

# There are different types of R Objects
# 1) Vectors
# 2) List
# 3) Matrices
# 4) Arrays
# 5) Factors
# 6) Data Frames


######## Vectors

# The very basic data types are the R-objects called vectors which hold elements of different classes as shown above
# When you want to create vector with more than one element
# You should use c() function, which means to combine the elements into a vector

# Create a vector

names <- c("Hitesh", "Gopinath")
names
class(names)

# Note : Even numeric, logical, character and vector of different types can also be created.


######## list

# A list is an R-Object which can contain many different types of elements inside it like vectors, functions and even other list inside it

# Syntax:

list()

# Create a list using list() function

names <- list("Hitesh", 'Gopinatha', 12, TRUE)
names
class(names)

# adding a vector into a list

names1 <- list(c(34, 23, 45), names)
names1
class(names1)

######## matrices

# A matrix is a collection of elements of the same data type (numeric, character or logical) arranged into a fixed numbers of rows and columns
# Since you are working only with rows and columns, a matrix is called two dimensional

#syntax:

matrix(data, nrow, ncol, byrow, dim_name)

# Create matrix

names <- matrix(c("Hitesh", "Gopinatha", "Manjula", "Harsha"), nrow = 2, ncol = 2, byrow = TRUE)
names  
class(names)


######## Arrays

# while matrices are confimed to two dimentional, arrays can be of any number of dimensions
# The array function takes a dim attribute which creates the requested number of dimensions

# synatx:

#array(data. dim(row_size, col_size, dim_names))

# Create an array
array_name <- array(c("Hitesh", "Gopinatha", "Manjula", "Harsha"), dim = c(2, 2, 2))
array_name
class(array_name)

######## Factors

# Factors are the R-Objects which are created using a vector
# It stores the vector along with the distinct values of the elements in the vectors as labels
# The labels are always character irrespective of whether it is numeric or character or Boolean etc. in the input vector

# syntax
# factor()

#creating as input
names <- c("Hitesh", "Gopinatha", "Manjula", "Harsha")
names

# Test it is a factor

is.factor(names)

# apply a factor function

factor_data <- factor(names)
class(factor_data)

# Print the factor

factor_data

######## Data Frame

# Dataframes are tabular data objects
# Unlike a matrix in dataframe, each column can contain different modes of data
# It is a list of vectors of equal length

# syntax

data.frame()

# Creating a dataframe

student.data <- data.frame(
  student_id = c(14:17),
  student_name = c("Hitesh", "Gopinatha", "Manjula", "Harsha"),
  student_class = c("BE", "MTECH", "BE", "MSC"),
  student_join = as.Date(c("2015-06-28", "2019-06-29", "2025-06-30", "2024-03-21")),
  stringsAsFactors = FALSE
)

student.data
class(student.data)
typeof(student.data)
print(student.data)


################### Handling Missing Values ####################################

# Handling missing values in R is one of the common tasks in data analysis
# In R, missing values are often represented by symbol NA (not available) or some other value that represents missing value (ex: 99)
# Impossible values (eg: dividing by zero) are represented by the symbol inf (not a number)

id <- c(101, 102, 103, 104)
name <- c("Hitesh", "Gopinatha", "Manjula", "Harsha")
Salary <- c(84000, 95000, 25000, 65000)

employee <- data.frame(id, name, Salary)
employee

# use is.na to test the missing value
is.na(employee$id)

# null value represents the object empty

a <- list(2, 3, 3, 4)
typeof(a)
is.list(a)

a <- NULL
is.null(a)