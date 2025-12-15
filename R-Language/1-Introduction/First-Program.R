##########################################First Program################################################################

######Using Print Function######

print("Hello World")
print("Hello World", quote=FALSE)


######Using Functions############

new.hello <- function(){
  print("Hello World")
}

new.hello()


######Reading the Input from the Users############

# In R language readline() method takes input in string format. If one inputs an Integer then it is inputted as a string
# Here we use <- or = operator to store the output

# Syntax

var <- readline();
var <- as.integer(var);

# Taking Input as a string

var = readline(prompt = "Enter your name: ")

#Taking input as a number and converting it to number
var = readline(prompt = "Enter a Number : ")
#as.integer(var) -> Converts to Integer
var <- as.integer(var)

#similarly

# as.numeric(n); -> converts to numeric type (float, double etc)
# as.complex(n); -> converts to complex number (i.e 3+2i)
# as.Date(n) -> convert to Date

# taking multiple inputs#
{
  name = readline(prompt = "Enter Your Name : ")
  age = readline(prompt = "Enter Your Age : ")
  place = readline(prompt = "Enter Your Place : ")
}

print(name)
print(age)
print(place)


# scan() method

# This method takes input from console. 
# This method is a very handy method while inputs are needed to tken quickly for any mathematical calculation or for any datasets
# scan() method is taking input continuously, to terminate the input process, need to press Enter key 2 times on the console

#syntax:

x = scan()

# taking input, default is number
name = scan()

# To read as Integer

age=scan(what = integer())


# To read as double

age = scan(what = double())

#To read as character

age = scan(what = character())

# To read the file and also the above parameter are applied for character and double

file = scan("C:\\DESKTOP.....")

# Printing the output of the user

#using the print() function

print("Hello World")

# There are source() and sink() function which helps great during file handeling

#Using the cat functions
cat("Hello World")

#Help info

help(print) #Getting help of a function that you know the name of
?print

example("paste")
example("for")

demo() # The demo function gives a longer demonstration of how to use a function
demo(package = .packages(all.available = TRUE)) #all demos
demo(plotmath)
demo(graphics)