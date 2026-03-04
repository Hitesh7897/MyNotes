#===============================================================================
# 📌 Topic : Selecting Columns in dplyr – select(), relocate(), pull()
#===============================================================================
# Topics Covered
# --------------
# 1. Syntax
# 2. Selecting Dataset
# 3. Selecting Columns by Name
# 4. Selecting Columns by Position
# 5. Excluding Columns
# 6. Renaming Columns While Selecting
# 7. Helper Functions
# 8. Selecting by Data Type
# 9. Dynamic Selection Using Character Vectors
# 10. Combining Selection Rules
# 11. Reordering Columns
# 12. Selection Inside Pipes
# 13. relocate() – Moving Columns
# 14. Converting Column to Vector
# 15. Using External Vectors with Tidyselect
# 16. select() inside Other Verbs
# 17. Selecting Distinct Columns
# 18. Select After Join
# 19. Programmatic Selection
# 20. Real-World Analysis Pattern
#===============================================================================


###############################################
# 1. Syntax
###############################################

select()



###############################################
# 2. Select the Dataset
###############################################

flights   # Simply typing dataset name prints it



###############################################
# 3. Select Columns by Name
###############################################

# Select single column
flights %>%
  select(year)

# Select multiple columns
flights %>%
  select(year, carrier)

# Select specific columns
flights %>%
  select(year, carrier, origin, dest)



###############################################
# 4. Select Columns by Position
###############################################

# Select column range by name
flights %>%
  select(year:day)

# Select by index
flights %>%
  select(1, 10, 11, 13, 14)

# Select range by position
flights %>%
  select(10:14)

# Combine index + range
flights %>%
  select(1, 10:14)



###############################################
# 5. Excluding Columns
###############################################

# Drop a column
flights %>%
  select(-year)

# Drop multiple columns
flights %>%
  select(-year, -month)

# Drop range
flights %>%
  select(-(year:day))



###############################################
# 6. Renaming Columns While Selecting
###############################################

flights %>%
  select(
    dep_year = year,
    dep_month = month,
    dep_day = day
  )

# Note:
# select() → drops other columns
# rename() → keeps all columns



###############################################
# 7. Helper Functions
###############################################

# starts_with()
flights %>%
  select(starts_with("dep"))

# ends_with()
flights %>%
  select(ends_with("delay"))

# contains()
flights %>%
  select(contains("time"))

# matches() using regex
flights %>%
  select(matches("^arr"))

flights %>%
  select(matches("delay|time"))

flights %>%
  select(matches("DELAY|TIME", ignore.case = TRUE))

# Regex pattern example
flights %>%
  select(matches("^.*t$"))

# last column
flights %>%
  select(last_col())

# second last column
flights %>%
  select(last_col(offset = 1))



###############################################
# 8. Selecting by Data Type
###############################################

# Numeric columns
flights %>%
  select(where(is.numeric))

# Numeric columns first
flights %>%
  select(where(is.numeric), everything())

# Character columns
flights %>%
  select(where(is.character))

# Logical columns
flights %>%
  select(where(is.logical))

# Combine conditions
flights %>%
  select(where(is.numeric), where(is.character))

# Exclude numeric columns
flights %>%
  select(-where(is.numeric))

# Logical vector selection
flights %>%
  select(which(c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE)))

# Custom selection condition
flights %>%
  select(where(~ is.numeric(.) && mean(., na.rm = TRUE) > 100))



###############################################
# 9. Dynamic Selection Using Character Vectors
###############################################

cols <- c("carrier", "year", "month", "day", "loc")

# all_of() → errors if column missing
flights %>%
  select(all_of(cols))

# any_of() → safe selection
flights %>%
  select(any_of(cols))



###############################################
# 10. Combining Selection Rules
###############################################

# Names + helpers
select(iris, Species, starts_with("Sep"))

# Exclusion helpers
flights %>%
  select(-starts_with("time"))

flights %>%
  select(-ends_with("time"))

flights %>%
  select(-contains("time"))

# Combine helpers
flights %>%
  select(starts_with("dep"), ends_with("delay"))



###############################################
# 11. Reordering Columns
###############################################

# Custom order
flights %>%
  select(year, carrier, flight, origin, dest)

# Move columns to front
flights %>%
  select(year, carrier, origin, dest, everything())

# Move column to end
flights %>%
  select(-year, year)



###############################################
# 12. Selection Inside a Pipe
###############################################

flights %>%
  select(year, carrier, flight, origin, dest) %>%
  head()



###############################################
# 13. relocate() – Moving Columns
###############################################

# Move column to front
flights %>%
  relocate(carrier)

# Move character columns to front
flights %>%
  relocate(where(is.character))

# Move columns relative to others
flights %>%
  relocate(origin, dest, .after = year)

flights %>%
  relocate(distance, .before = air_time)

# Move delay columns to front
flights %>%
  relocate(contains("delay"))

# Move numeric columns to end
flights %>%
  relocate(where(is.numeric), .after = last_col())



###############################################
# 14. Convert Column to Vector
###############################################

air_times <- flights %>%
  pull(air_time)

air_times

mean(air_times, na.rm = TRUE)

# Pull last column
flights %>%
  pull(last_col())

# Pull first column
flights %>%
  pull(1)



###############################################
# 15. Tidyselect with External Vector
###############################################

delay_cols <- names(flights)[grep("delay", names(flights))]

delay_cols

flights %>%
  select(all_of(delay_cols))



###############################################
# 16. select() Inside Other Verbs
###############################################

# mutate(across())

flights %>%
  mutate(across(ends_with("delay"), ~ . / 60))

# summarise(across())

flights %>%
  summarise(across(where(is.numeric), mean, na.rm = TRUE))



###############################################
# 17. Select Distinct Columns
###############################################

flights %>%
  distinct(origin)

flights %>%
  distinct(origin, dest)



###############################################
# 18. Select After Join
###############################################

flights %>%
  left_join(airlines, by = "carrier") %>%
  select(carrier, name, dep_delay, arr_delay)



###############################################
# 19. Selecting Columns Programmatically
###############################################

select_delay_columns <- function(data) {
  
  data %>%
    select(contains("delay"))
  
}



###############################################
# 20. Real-World Analysis Pattern
###############################################

flights %>%
  select(
    year, month, day,
    carrier, origin, dest,
    dep_delay, arr_delay
  ) %>%
  filter(dep_delay > 60) %>%
  arrange(desc(dep_delay))



###############################################
# Quiz
###############################################



###############################################
# Assignment
###############################################

AE <- read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")
DM <- read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/dm.csv")
VS <- read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/vs.csv")
EX <- read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ex.csv")
LB <- readr::read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/master/clinical_datasets/sdtm/daibetes/csv/lb.csv")
SV <- read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/sv.csv")
CM <- read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/cm.csv")
DS <- read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ds.csv")

# URL test
url <- "https://raw.githubusercontent.com/ganeshbabuNN/datasets/master/clinical_datasets/sdtm/daibetes/csv/lb.csv"

readLines(url, n = 5)

# If corporate proxy blocks request

LB <- readr::read_csv(curl::curl(url))

LB <- readr::read_csv(
  url,
  locale = readr::locale(encoding = "UTF-8")
)



###############################################
# Resources
###############################################

# https://dplyr.tidyverse.org/reference/select.html



###############################################
# END OF FILE
###############################################