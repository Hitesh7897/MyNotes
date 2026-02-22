############################################################
# 📌 Topic: Strings in R
############################################################

# ==========================================================
# Intro
# ==========================================================
# * Strings are sequences of characters written inside
#   single ('') or double ("") quotes
# * Internally, R stores strings as character vectors
# * Strings in R are IMMUTABLE

# ==========================================================
# Creating Strings
# ==========================================================

'Hello World'
"Hello World"

mychar <- "R is a Super Programming language"
cat(mychar, "\n")
class(mychar)

mychar <- 'R is a Super Programming language'
cat(mychar, "\n")
class(mychar)

# ❌ Invalid (unbalanced quotes)
# mystr <- ' I'm using single quotes, but this will create an error'

# ✅ Correct
mystr <- "I'm using single quotes, but this will not error"
mystr

x <- "Hello 'my' friends"
x

# ❌ Invalid
# y <- 'Hello 'my' friends'

# Count characters
nchar(x)

class(x)
typeof(x)

# ==========================================================
# Empty Strings vs Empty Vectors
# ==========================================================

x <- ""
nchar(x)

y <- character(2)
y
length(y)
nchar(y)

z <- character(0)
z
length(z)
nchar(z)

z[1] <- "Tom"
z
length(z)
nchar(z)

# ==========================================================
# Character Checks & Conversion
# ==========================================================

x <- "The weather is fine"
is.character(x)

x <- c(2, 3, 4)
typeof(x)

x <- as.character(x)
x
typeof(x)
is.character(x)

# ==========================================================
# Rules for String Construction
# ==========================================================
# * Quotes must match
# * Single quotes allowed inside double quotes
# * Double quotes allowed inside single quotes
# * Same quote cannot appear unescaped

# ==========================================================
# Printing Strings
# ==========================================================

'Hello world'
cat("hello world\n")
print("Hello world")
paste("hello world", "welcome to R programming")

# Valid
a <- "learn the R Programming language"
print(a)

a <- 'learn the R Programming language'
print(a)

a <- "learn the R 'Programming language"
print(a)

a <- 'learn the R "Programming language'
print(a)

# ==========================================================
# String Formatting
# ==========================================================

company <- "Novo Nordisk"
experience <- 7
name <- "Hitesh B G"

cat("Myself", name, "working in", company,
    "for past", experience, "years.\n")

paste("Myself", name, "working in", company,
      "for past", experience, "years.")

# ==========================================================
# sprintf() — Advanced Formatting
# ==========================================================

sprintf("%f", 0.725896956)
sprintf("%.3f", 0.725896956)
sprintf("%.f", 0.725896956)
sprintf("%+.3f", 0.725896956)
sprintf("%e", 82.235691)
sprintf("%g", 82.235691)
sprintf("%.4s", "Philadelphia")
sprintf("%d", 23755)

a <- 7
b <- 3
sprintf("The sum of the numbers %d and %d is %d", a, b, a + b)

a <- 4.5
b <- 10
sprintf("The sum of the numbers %.1f and %d is %.1f", a, b, a + b)

# ==========================================================
# Accessing String Elements
# ==========================================================

x <- "Learn R programming"
substr(x, 1, 1)
substr(x, 1, 5)
substr(x, 7, 7)

letters
letters[1]
letters[1:5]
letters[c(1, 5, 14)]

# ==========================================================
# String Properties
# ==========================================================

x <- "Hitesh"
.Internal(inspect(x))
x <- "B G"
.Internal(inspect(x))
# New object → immutability

# ==========================================================
# Escape Characters
# ==========================================================

txt <- "we are so-called \"Humans\" to serve others"
print(txt)

print("positive\\negative")
print("\'positive\'")
print("\"positive\"")

# ==========================================================
# String Regular Expressions
# ==========================================================
# (Detailed in Regex chapter)

# ==========================================================
# String Methods
# ==========================================================

# Splitting
x <- "Hitesh B G"
strsplit(x, " ")
strsplit(x, " ")[[1]]

x <- "1589-3558-0156-2079"
strsplit(x, "-")

strsplit("Detroit", "")

# ==========================================================
# Trimming Spaces
# ==========================================================

a <- " Hitesh B G "
trimws(a, "left")
trimws(a, "right")
trimws(a, "both")
gsub("\\s+", "", a)

# ==========================================================
# Find / Search
# ==========================================================

x <- c("Philadelphia", "Austin")

grep("del", x)
grep("stin", x, value = TRUE)
grepl("a", x, ignore.case = TRUE)

regexpr("del", x)
gregexpr("a", x)
regexec("a", x)

# Count occurrences
text1 <- c("gbag", "gbag", "brga")
length(grep("gbag", text1))

# ==========================================================
# Replace
# ==========================================================

text <- "This should be supported on all platforms"
gsub("supported", "support", text)

x <- c("file_a.csv", "file_b.csv")
gsub("file_", "", x)

sub("ss", "dd", c("Massachussets", "Russel"))

# chartr()
x <- "B*rry h*s * $ed t$uck"
chartr("*$", "ar", x)

# ==========================================================
# Case Conversion
# ==========================================================

a <- "hello world"
toupper(a)
tolower(a)
casefold(a, upper = TRUE)

library(stringr)
str_to_title(a)

# ==========================================================
# Alignment
# ==========================================================

install.packages("DescTools") # once
library(DescTools)

x <- "Hitesh B G"
StrAlign(x, 20, "center")
StrAlign(x, 20, "left")
StrAlign(x, 20, "right")

# ==========================================================
# Length
# ==========================================================

nchar(x)
str_length(x)

# ==========================================================
# Concatenation
# ==========================================================

paste("The weather", "is fine")
paste0("Port", "land")

cat("The weather", "is fine", sep = "_")

# ==========================================================
# Start / End / Contains
# ==========================================================

x <- "Hitesh B G"
startsWith(x, "ga")
endsWith(x, "bu")

grepl("ne", x)

library(stringr)
str_detect(x, "ne")

# ==========================================================
# Membership
# ==========================================================

x <- c("Hitesh", "vedha", "rocky")

"Hitesh" %in% x

`%!in%` <- Negate(`%in%`)
"nadi" %!in% x

# ==========================================================
# Occurrence Count
# ==========================================================

str_count("Hitesh B G", "a")
lengths(gregexpr("a", "Hitesh B G"))

# ==========================================================
# Encoding
# ==========================================================

library(stringi)
txt <- "My name is Ståle"
stri_trans_general(txt, "Latin-ASCII")

# ==========================================================
# Indexing
# ==========================================================

x <- "Hitesh B G"
substr(x, 1, 2)

grep("[gb]", strsplit(x, "")[[1]])

# ==========================================================
# dQuote / noquote
# ==========================================================

dQuote("hello")
noquote(dQuote("hello"))

# ==========================================================
# Quiz
# ==========================================================
# 1) "" vs NA?
# 2) paste vs paste0?
# 3) grep vs grepl?
# 4) substr vs str_extract?
# 5) Why strings are immutable?

# ==========================================================
# Assignment
# ==========================================================
# 1) Clean Subject IDs
# 2) Extract visit numbers
# 3) Detect keywords using regex
# 4) Format reports with sprintf()

# ==========================================================
# Resources
# ==========================================================
# https://stringr.tidyverse.org/
# https://www.datacamp.com/community/tutorials/strings-in-r
# https://cran.r-project.org/doc/manuals/R-lang.html
############################################################

############################################################
# END OF FILE
############################################################