# Command prompt
# Using function
# Using class
# Help info

########### Command Prompt ############

# We can use the print() function
print("Hello World")

## Quotes can be suppressed in the output

print("Hello World", quote = FALSE)

## If there are more than 1 item, we can concatenate using paste()
print(paste("How", "are", "You"))

# print is a statement
# Hellow world! is a string literals
# paste is functions and statement

############# Using Function ############

hello <- function(){
  print("Hello World")
}

hello()

# Hello is a function name which is an identifier
# function is a keyword
# print is a statement
# function has its syntax

############### Using Class #################

studentDetails <- list(name = "Hitesh", age = 28, place = "INDIA") # studentDetails contains the list of elements passing a list

class(studentDetails)

#studentDetails - new created class
# class is a keyword
# studentDetails is a identifier
# # name, age and place are the identifier as well and act as a argument for list


################## Help Info ###########################

help("print") # Getting help on a function that you know the name of ? or help
?print

example("paste") # use the example function to see examples of how to use it

example("for")


demo() # The demo function gives longer demonstartion of how to use a function
demo(package = .packages(all.available = TRUE)) # all demos
demo(plotmath)
demo(graphics)

################### function Searching #####################

??regression # Finding a function that you dont know the name of Use ?? or equivalet, help.search
help.search("regression")

??"logistic regression" # Again, non-standard names and phrases need to be quoted
apropos("a$") # aprops finds functions and variables in the current session-space (but not installed but not-loaded packages) that match a regular expression

RSiteSearch("logistic regression") # Find in SOS wraps RSiteSearch returning the result as a HTML table

#################### Packages Info#############################

View(available.packages()) # available.packages tells you all the packages that are available in the repositories that you set via setRepositories.
View(installed.packages()) # installed.packages tells you all the packages that you have installed in all the libraries specified in .libPaths
library() # library (Without any arguments) is similar, returning the names and tag-line of installed packages
.libPaths() # .libPaths gets/sets the library trees within which packages are looked for.

data() # data with no arguments tells you which datasets are available on your machine
search() # Search tells you which packages have been loaded.
packageDescription("utils") # packageDescription shows you the contents of a package's Description file. Likewise news read the NEWS file

ls() # ls lists the variables in the global environment
ls(all.names = TRUE) # Includes names having .
ls("package:broom") # everything for the SP package
str(a) # Most variables can be inspected using str or summary
summary(a) # It is used for the dataframe to summarize the descriptive statistics
glimpse(a) # It is similar to summary

###################### Directories ##############################

getwd() # Prints the current working directory
ls() # lists the objects in the current workspace

setwd(mydirectory) # change to mydirectory
setwd("c:/docs/utils") # note: Use / instead of \ in windows
setwd("c:/docs/utils") # as it is on linux

# View and set options for the session

help("option") # learn about available options
options() # view current option settings
options(digits = 3) # number of digits to print on output

# Work with your previous commands

history() # Displays last 25 commands
history(max.show = Inf) # Displays all previous commands

## Save your command history
savehistory(file = "myfile") # default is .Rhistory

## recall your command History
loadhistory(file = "myfile") # default is .Rhistory

## Save the workspace to the file .RData in the cwd
save.image()

## Save specific objects to a file
## If you dont specify the path, the cwd is assumed

save(object list, file="myfile.RData")

## load a workspace into the current session
## If you dont secify the path, the cwd is asumed

load("myfile.RData")

q() # quit R. You will be prompted to save the workspace

##################### removing the objects ############################

rm(EX1) # removes the specific objects
rm(list = ls()) # remove all objects
rm(list = c("EX")) # removing specific objects from workspace - Single Object
rm(list = c("EX", "DM")) #removing specific objects from workspace - Multiple Objects
rm(list = ls(pattern = IE_)) # removes all objects in the workspace at srting with IE_
rm(list = setdiff(ls(), "x")) # removes all objects in the workspace except one object; "x"
rm(list = setdiff(ls(), c("x", "y"))) # removes all objects in the workspace except x & y
rm(list = setdiff(ls(pattern = "^edc_"), lsf.str())) # removes all the objects except starting with the defined character
   
######################## Note Handelling #################################

# R gets confused if you use a path in your code like: c:\mydocuments\myfile.txt

#This is because R sees "\" as an escape character. Instead, use: c:\\mydocument\\myfile.txt pr c:/mydocuments/myfile.txt