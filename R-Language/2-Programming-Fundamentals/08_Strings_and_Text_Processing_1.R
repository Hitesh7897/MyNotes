############################################################
# 📌 Topic: Strings and Text Processing in R
############################################################

# ==========================================================
# 1️⃣ Introduction
# ==========================================================
# Strings are sequences of characters written inside
# single ('') or double ("") quotes.
# Internally, R always stores strings as character vectors.

# ==========================================================
# 2️⃣ Creating Strings
# ==========================================================

# Direct assignment
x <- "Data Science"
class(x)
typeof(x)

# character() creates empty character vectors
x <- character(3)
x

# Single vs Double Quotes
'Hello World'
"Hello World"

# Correct usage of quotes
mystr <- "I'm using single quotes safely"
mystr
nchar(mystr)

# Numbers as strings
a <- 32423423
length(a)                 # length of vector
nchar(as.character(a))    # number of digits

# ==========================================================
# 3️⃣ Empty String vs NA
# ==========================================================

x <- c("", NA, "R")
x == ""
is.na(x)

# Empty character vector
y <- character(2)
length(y)
nchar(y)

# Truly empty vector
z <- character(0)
length(z)
nchar(z)

z[1] <- "Tom"
z

# ==========================================================
# 4️⃣ Character Vectors (Core Concept)
# ==========================================================
# Strings always live inside vectors

x <- "R"
length(x)

languages <- c("R", "Python", "SQL")
length(languages)

is.character(languages)

# Numeric → Character
x <- c(2, 3, 4)
x <- as.character(x)
x
typeof(x)

# ==========================================================
# 5️⃣ Printing Strings
# ==========================================================

print("Hello World")

cat("Hello World\n")

# Differences
# print() → shows object (with quotes, index)
# cat()   → prints clean output (no quotes, no index)

# ==========================================================
# 6️⃣ String Formatting
# ==========================================================

company <- "Novo Nordisk"
experience <- 7
name <- "Hitesh B G"

# cat()
cat("Myself", name, "working in", company,
    "for past", experience, "years.\n")

# paste()
paste("Myself", name, "working in", company,
      "for past", experience, "years.")

# paste0()
paste0("EMP_", 101)

# ==========================================================
# 7️⃣ sprintf() — Professional Formatting
# ==========================================================

sprintf("Score: %.2f", 9.45678)
sprintf("Student %s scored %.1f marks", "Ravi", 87.345)
sprintf("Accuracy: %.2f%%", 98.456)

# Padding and alignment
sprintf("%05d", 82)
sprintf("%-10s", "Hitesh")

# IDs
emp_ids <- c(1, 24, 105)
sprintf("EMP-%03d", emp_ids)

# ==========================================================
# 8️⃣ Accessing String Elements
# ==========================================================

x <- "Learn R Programming"
substr(x, 1, 5)
substring(x, 7, 7)

letters[1:5]
letters[c(1, 5, 14)]

# ==========================================================
# 9️⃣ Escape Characters
# ==========================================================

cat("Line One\nLine Two\n")
cat("ID\tName\tScore\n1\tAlice\t95\n")
cat("Path: C:\\Users\\Documents\\Data\n")
cat("It's a beautiful day\n")

# ==========================================================
# 🔟 Regular Expressions (Regex)
# ==========================================================

library(stringr)

# Basic patterns
str_detect("REF123", "^REF")
str_detect("data.csv", "\\.csv$")
str_extract("Room 504", "\\d+")
str_extract("Year 2024", "\\d{4}")

# Character classes
str_extract_all("apple", "[aeiou]")
str_extract_all("apple", "[^aeiou]")

# Quantifiers
str_extract("Models", "Models?")
str_extract("baaaa", "ba*")

# ==========================================================
# 1️⃣1️⃣ Grouping & Capture
# ==========================================================

phone <- "(555)-123-4567"
str_match(phone, "\\((\\d{3})\\)")[, 2]

# ==========================================================
# 1️⃣2️⃣ Real-World (Clinical / SDTM Example)
# ==========================================================

library(dplyr)

raw_clinical <- data.frame(
  USUBJID = c("SITE01-001", "SITE01-002", "SITE02-005"),
  RAW_LAB = c("  GLUCOSE (mg/dL) ", "HEMOGLOBIN (g/dL)", "glucose (MG/DL)"),
  RAW_MH  = c("DIABETES TYPE II", "hypertension", "Asthma - mild"),
  stringsAsFactors = FALSE
)

raw_clinical %>%
  mutate(
    LBTEST = str_to_upper(str_squish(str_extract(RAW_LAB, "^[A-Za-z]+"))),
    LBUNIT = str_extract(RAW_LAB, "(?<=\\().+?(?=\\))"),
    DIAB_FL = ifelse(
      str_detect(RAW_MH, regex("diabetes", ignore_case = TRUE)),
      "Y", "N"
    ),
    MHTERM = str_remove(RAW_MH, "\\s-\\s.*$") %>% str_to_upper(),
    SITEID = str_match(USUBJID, "(^SITE\\d+)-")[, 2]
  )

# ==========================================================
# 1️⃣3️⃣ Base R vs stringr (Key Difference)
# ==========================================================

# Base R
grep("AE", c("AE_TERM", "DM_AGE"))
grepl("AE", c("AE_TERM", "DM_AGE"))

# stringr
str_detect(c("AE_TERM", "DM_AGE"), "AE")

# ==========================================================
# 1️⃣4️⃣ String Functions (Cheat Sheet)
# ==========================================================

# Length
nchar("Hello")
str_length("Hello")

# Case conversion
toupper("hello")
tolower("HELLO")
str_to_title("Hitesh B G")

# Trimming
trimws("  hello  ")
str_squish("  too   many   spaces ")

# Replace
gsub("-", "_", "SUB-001")
str_replace_all("apple apple", "apple", "pear")

# Split
strsplit("R,Python,SQL", ",")
str_split("R,Python,SQL", ",")

# Compare
identical("abc", "abc")
"abc" == "ABC"

# Sort
sort(c("SQL", "R", "Python"))

# ==========================================================
# 1️⃣5️⃣ Common Pitfalls
# ==========================================================

# ❌ Wrong
"Data" == "ClinicalData"

# ✅ Correct
grepl("Data", "ClinicalData")

# ==========================================================
# Summary
# ==========================================================
# Strings in R are:
# - Always vectors
# - Immutable
# - Best cleaned with regex
#
# Core tools:
# paste()   → readable text
# paste0()  → IDs, filenames
# sprintf() → reports & formatting
# stringr   → consistent, readable, powerful

# ==========================================================
# Quiz
# ==========================================================
# 1) Difference between "" and NA?
# 2) paste() vs paste0()?
# 3) Why sprintf() preferred in reports?
# 4) grepl() vs str_detect()?
# 5) substr() vs substring()?

# ==========================================================
# Assignment
# ==========================================================
# 1) Clean subject IDs with mixed delimiters
# 2) Extract visit numbers from labels
# 3) Standardize lab names (uppercase, trimmed)
# 4) Detect AE terms using regex
# 5) Generate padded IDs like SUB-001

# ==========================================================
# Resources
# ==========================================================
# https://stringr.tidyverse.org/
# https://www.datacamp.com/community/tutorials/strings-in-r
# https://cran.r-project.org/doc/manuals/R-lang.html
# https://www.gastonsanchez.com/r4strings/
############################################################

############################################################
# END OF FILE
############################################################