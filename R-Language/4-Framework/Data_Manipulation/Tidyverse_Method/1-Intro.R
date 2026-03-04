#===============================================================================
# 📌 Topic : Tidyverse in R – Packages, Workflow & Core Verbs
#===============================================================================
# Topics Covered
# --------------
# 1. Tidyverse Packages
# 2. Sample Datasets
# 3. Data Frame vs Tibble
# 4. Need for Tidyverse
# 5. Tidyverse Package Summary
# 6. Frequently Used Verbs
# 7. Workflow & Readability
# 8. Frequently Used Functions
# 9. Resources
#===============================================================================


###############################################
# 1. Tidyverse Packages
###############################################
# Install tidyverse

install.packages("tidyverse")

# Load tidyverse
library(tidyverse)

# Check system requirements
pak::pkg_system_requirements("tidyverse")
pak::pkg_sysreqs()

# Tidyverse documentation
# https://tidyverse.tidyverse.org/

# The tidyverse is a collection of packages that share:
# • Common data structures
# • Consistent syntax
# • Similar API design

# Recommended Book
# https://r4ds.hadley.nz/

# Show packages inside tidyverse
tidyverse_packages()



###############################################
# 2. Sample Datasets
###############################################
# Famous dataset package for learning data analysis

install.packages("nycflights13")

library(nycflights13)

# View datasets

View(airlines)
View(airports)
View(flights)
View(planes)
View(weather)

# Inspect object type

class(flights)
typeof(flights)

# Structure of dataset

str(flights)

# glimpse() – better preview for large data

glimpse(flights)

# Dataset dimensions

dim(flights)
nrow(flights)
ncol(flights)



###############################################
# 3. Data Frame vs Tibble
###############################################

#===============================================================================
# Data Frame (data.frame)
#===============================================================================
# Base R tabular data structure.

# Characteristics
# • List of equal-length vectors
# • Automatically fixes column names
# • May convert strings to factors (older R versions)
# • Selecting one column returns vector
# • Printing large dataset floods console

# Example

my_df <- data.frame(
  name = c("Alice","Bob","Charlie"),
  age = c(25,30,35),
  has_pets = c(TRUE,FALSE,TRUE)
)

print(my_df)



#===============================================================================
# Tibble (tbl_df)
#===============================================================================
# Modern data frame used in tidyverse.

# Philosophy
# "Fail early and fail clearly"

# Characteristics
# • Better printing
# • Stronger type checks
# • Preserves column names
# • Always returns tibble

library(tibble)

my_tbl <- tibble(
  name = c("Alice","Bob","Charlie"),
  age = c(25,30,35),
  has_pets = c(TRUE,FALSE,TRUE)
)

print(my_tbl)



###############################################
# tribble() – Row-wise Tibble Creation
###############################################

my_tribble <- tribble(
  ~name,     ~age,  ~has_pets,
  "Alice",   25,    TRUE,
  "Bob",     30,    FALSE,
  "Charlie", 35,    TRUE
)

my_tribble



###############################################
# Practical Example
###############################################

library(nycflights13)

# flights dataset is already a tibble

flights

# Convert tibble to data.frame

flights_old <- as.data.frame(flights)

head(flights_old)



###############################################
# 4. Need of Tidyverse
###############################################

# Example using Base R

flight_month <- flights[,c("year","month","day")]

glimpse(flight_month)

flight_first_month <- flight_month[
  which(flight_month$month == 1),
]

flight_first_month



# Same task using dplyr

flight_month <- select(flights, year, month, day)

filter(flight_month, month == 1)



###############################################
# Pipe Operator (%>%)
###############################################
# Most useful tool in tidyverse

flight_m <- flights %>%
  select(year, month, day) %>%
  glimpse() %>%
  filter(month == 1)



# Base R pipe (R 4.1+)

flights |>
  select(year, month, day) |>
  filter(month == 1)



###############################################
# Large Data Alternatives
###############################################

# For very large datasets consider:

# data.table
# duckdb
# sparklyr



###############################################
# 5. Tidyverse Package Summary
###############################################

# ggplot2   → Data visualization
# dplyr     → Data manipulation
# tidyr     → Data reshaping
# readr     → Data import
# purrr     → Functional programming
# tibble    → Modern data frames
# stringr   → String manipulation
# forcats   → Factor handling
# lubridate → Date-time handling



###############################################
# Additional Tidyverse Ecosystem Packages
###############################################

# hms           → Time vectors
# blob          → Binary objects
# magrittr      → Pipe operator
# glue          → String interpolation
# tidymodels    → Machine learning ecosystem



###############################################
# Data Import Packages
###############################################

# feather      → Python interoperability
# haven        → SAS / SPSS / Stata
# httr         → Web APIs
# jsonlite     → JSON parsing
# readxl       → Excel files
# googlesheets4→ Google Sheets
# googledrive  → Google Drive
# rvest        → Web scraping
# xml2         → XML parsing

# tidyselect
# https://tidyselect.r-lib.org/reference/index.html



###############################################
# 6. Frequently Used Verbs (dplyr)
###############################################

# Core data manipulation

# select()     → Choose columns
# filter()     → Filter rows
# arrange()    → Sort rows
# mutate()     → Create / modify columns
# summarise()  → Aggregate data
# group_by()   → Define groups
# rename()     → Rename columns
# distinct()   → Remove duplicates
# count()      → Count rows
# slice()      → Select rows by position
# pull()       → Extract column as vector



###############################################
# Combining & Joining Data
###############################################

# left_join()
# right_join()
# inner_join()
# full_join()
# bind_rows()
# bind_cols()



###############################################
# Reshaping Data (tidyr)
###############################################

# pivot_longer()
# pivot_wider()
# separate()
# unite()
# drop_na()
# replace_na()



###############################################
# Data Cleaning Helpers
###############################################

# across()
# if_else()
# case_when()
# coalesce()
# rowwise()



###############################################
# 7. Workflow & Readability
###############################################

# %>%      → Pipe operator
# glimpse()→ Quick structure preview
# as_tibble() → Convert data frame to tibble



###############################################
# Most Common Analysis Workflow
###############################################

data %>%
  filter() %>%
  select() %>%
  mutate() %>%
  group_by() %>%
  summarise()

# 80–90% of real-world analysis uses these verbs



###############################################
# 8. Frequently Used Functions
###############################################

#===============================================================================
# Date Functions (lubridate)
#===============================================================================

# ymd(), mdy(), dmy()
# as.Date()
# year(), month(), day()
# wday(), qtr()
# floor_date(), ceiling_date()
# interval()
# %within%
# difftime()
# today(), now()

# Example

mutate(year = year(visit_date),
       month = month(visit_date))



#===============================================================================
# String Functions (stringr)
#===============================================================================

# str_detect()
# str_replace()
# str_replace_all()
# str_extract()
# str_sub()
# str_length()
# str_to_upper()
# str_to_lower()
# str_trim()
# str_split()

# Base helpers

# paste()
# paste0()
# sprintf()

# Example

filter(str_detect(subject_id, "^SUBJ"))



#===============================================================================
# Numeric Functions
#===============================================================================

# mean()
# median()
# sum()
# min(), max()
# round()
# ceiling()
# floor()
# abs()
# log()
# sqrt()
# sd()
# var()
# n()
# n_distinct()
# rank()
# percent_rank()

# Example

summarise(avg_age = mean(age, na.rm = TRUE))



###############################################
# Functions Used Across All Domains
###############################################

# is.na()
# if_else()
# case_when()
# coalesce()
# na.rm = TRUE



###############################################
# Real-World Analysis Example
###############################################

data %>%
  mutate(
    year = year(date),
    month = month(date),
    category = case_when(
      str_detect(code, "A") ~ "Group A",
      value > 100 ~ "High",
      TRUE ~ "Other"
    )
  ) %>%
  group_by(year, category) %>%
  summarise(
    avg_value = mean(value, na.rm = TRUE),
    count = n()
  )



###############################################
# Resources
###############################################

# https://tidyverse.tidyverse.org/
# https://r4ds.hadley.nz/
# https://ggplot2.tidyverse.org/
# https://dplyr.tidyverse.org/
# https://tidyr.tidyverse.org/
# https://readr.tidyverse.org/

###############################################
# END OF FILE
###############################################