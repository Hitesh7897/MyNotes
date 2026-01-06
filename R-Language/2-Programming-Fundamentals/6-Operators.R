########################################################## Introduction #####################################################################

# The Operator can be defined as a symbol which is responsible for a particular operation between two operands
# An operator is a symbol which tells the compiler to perform specific logical or mathematical manipulation
# R Program is very rich in built in operators
# Operators are used to perform operation on variables and values

####################################################### Type of Operators ###################################################################

# There are five types of operators

# 1) Arithmetic operator
# 2) Relational Operator
# 3) Logical Operator
# 4) Assignment Operator
# 5) Miscellaneous Operator

###################################################### Arithmetic Operator ##################################################################

# Arithmetic operator are used to perform arithmetic operations between two operands

# + (Addition) - Adds two vectors
# - (Subtraction) - Subtracts second vector from the first
# / (divide) - Divide the first vector with the second
# * (Multiplication) - Multiplies both vectors
# %% (Modulus remind) - It returns the remainder after dividing the first operand by the second operand
# ^ (Exponent) - The first vector raised to the exponent of the second vector
# %/% (Quotient) - It return the result of division of first vector with the second

a <- c(3, 5, 5, 6)
b <- c(22, 7, 6)

sum <- a+b; # Addition operator

sub <- a-b # Subtraction operator

div <- a/b # Division operator

mul <- a*b # Multiplication operator

mod <- a%%b # Modulus operator

car <- a^3 # Exponent operator

ex <- a%/%b

######################################################## Relational Operators ###################################################################

# A relational operator is a symbol which defines some kind of relation between two entities

# < - If the first operand is less than the second operand then the condition becomes true
# > - If the first operand is greater than the second operand then the condition becomes true
# <= - If the first operand is less than or equal to the second operand then the condition becomes true
# >= - If the first operand is greater than or equal to the second operand then the condition becomes true
# == - If the value of two operands is equal then the condition becomes true
# != - If the value of two operands is not equal then the condition becomes true

a <- c(3, 5, 5, 6)
b <- c(22, 7, 6)

gr <- a>b # greater operator

lo <- a<b # lesser operator

lee <- a<=b # lesser than equal operator

gre <- a>=b # grater than equal operator

eq <- a == b # equal operator

neq <- a!=b # Not equal operator

######################################################### Logical Operators #####################################################################

# The logical operator are used primarily in the expression evaluation to make a decision.

# & (and) - This operator is known as the element wise logical AND operator. This operator takes the first element of both the vector and returns TRUE if both the elements are TRUE
# | (OR) - This operator is known as the element wise logical OR operator. This operator takes the first element of both the vector and return true if one of them is TRUE
# ! (not) - This operator is known as the element wise logical not operator. This operator takes the first element of the vector and gives the opposite logical value as a result.
# && - This operator is known as Logical AND operator. This operator takes the first element of both the vector and gives TRUE as a result only if both are TRUE.
# || - This operator is known as Logical OR operator. This operator takes the first element of both the vector and gives TRUE as a result, if one of them is TRUE.

a <- c(3, 0, TRUE, 2+2i)
b <- c(2, 4, TRUE, 2+3i)

print(a&b)
print(a|b)


######################################################## Assignment Operators ##################################################################

# An assignment operator is used to assign a new value to a variable. In R, these operators are used to assign values to vectors

# <- or = or <<- These operator are known as left assignment operators
# -> or ->> These operator are known as right assignment operators

# left assignment operator

a<- b
# If there is one complex type then all the elements will become complext type

a=b

a <<- b

# Right assignment operator

a -> b
a ->> b

########################################################## Miscellaneous Operators ###########################################################

# Miscellaneous operators are used for special and specific purpose

# :(colon) - The colon operator is used to create the series of numbers in sequence for a vector
# %in% - This is used when we want to identify if an element belongs to a vector
# %*% - It is used to multiply a matrix with its transpose

v <- c(4:10) # colon operator

v1 <- 9
v2 <- 4
h <- c(1:8)
print(v1%in%h)
print(v2%in%h)

M <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)
M
t(M)
tran <- M%*%t(M)
tran

########################################## Operator Overloading and Overwriting ##############################################################

# Generally few languages supports operator overloading and overwriting

# using number

a <- 3
b <- 3

a+b # Its Overrides

# using string

a < "Hitesh"
b <- "B G"
a|b # R does not allow overload as it allows only numeric not strings

# using list

l1 <- list(1, 2, 3, 4, 5)
l2 <- list(6, 7, 8, 9, 10)
l1+l2 # R does not allows overload as it allows only numeric not lists


############################################# Operator precedence and associativity ##########################################################

# The precedence of an operator is essential to find out since it enables us to know which operator should be evaluated first
# THe pecedence table of the operator is given below

# ^ - (Exponent Right or Left)
# -x, +x - Unary minus, Unary Plus (left or right)
# %% - Modulus (left or right)
# *, / - Multiplication, Division (left or right)
# +, - - Addition, Substraction (left or right)
# <, >, <=, >=, ==, != - comparision (left or right)
# ! - logical not (left or right)
# &, && - logical AND (left or right)
# |, || - logical OR (left or right)
# ->, ->> - Rightward assignment (left or right)
# <-, <<- - Leftward assignment (left or right)
# = - Leftward assignment (left or right)

# In the above table, you can confirm that some of the groups have any operators
# It means that all operators in a group are at the same precedence level
# And whenever two or more operators have the same precedence, then associativity defines the order of operations
# The associativity is the order in which it evaluates an expression containing multiple operators of the same precedence
# Almost all operators except the exponent (^) support the left to right associativity

# Testing Left to Right Associativity

print(4 * 7%%3) # i.e 4 * (7%%3)

# Testing Left to Right Associativity

print(2*3^2) # i.e 2*(3^2)

# Checking the right-left associativity of ^ operator

print(4^2+2) # i.e (4^2)+2

print(3^2*2) # i.e (3^2)*2

# R does have some operators such as assignment operator and comparision operator which dont support associativity. Instead, there are special rules for the ordering of this type of operator which cant be managed via associativity