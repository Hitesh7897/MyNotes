#===============================================================================
# 📌 Topic : Sorting Data with dplyr – arrange(), Ranking & Grouped Sorting
#===============================================================================
# Topics Covered
# --------------
# 1. Syntax
# 2. Basic Sorting with arrange()
# 3. Sorting by Multiple Columns
# 4. Handling Missing Values
# 5. Sorting with Derived Columns
# 6. Sorting After Filtering
# 7. Sorting Within Groups
# 8. Top N Rows Per Group
# 9. Sorting After Summarise
# 10. Sorting Character Columns
# 11. Sorting by Date & Time
# 12. Custom Sorting Logic
# 13. Ranking Functions
# 14. Quiz
# 15. Assignment
# 16. Resources
#===============================================================================


###############################################
# 1. Syntax
###############################################
# In dplyr, sorting is done using:

arrange()



###############################################
# 2. Basic Sorting with arrange()
###############################################

# Sort by one column (ascending – default)

flights %>%
  arrange(dep_delay)

# Sort in descending order

flights %>%
  arrange(desc(dep_delay))



###############################################
# 3. Sorting by Multiple Columns
###############################################
# Real-world scenario: sort by delay, then distance.

flights %>%
  arrange(desc(dep_delay), desc(distance))



###############################################
# 4. Handling Missing Values (NA Sorting)
###############################################
# By default: NA values go to the end.

flights %>%
  arrange(arr_delay)

# Check last rows

flights %>%
  arrange(arr_delay) %>%
  tail()

# Explanation:
# is.na(arr_delay) returns TRUE / FALSE
# FALSE rows appear before TRUE rows



###############################################
# 5. Sorting with mutate() (Derived Columns)
###############################################
# Sort using calculated metrics.

# Example: Delay per mile

flights %>%
  mutate(delay_per_mile = arr_delay / distance) %>%
  arrange(desc(delay_per_mile))



###############################################
# 6. Sorting After Filtering
###############################################
# Example: Top delayed flights from JFK

flights %>%
  filter(origin == "JFK") %>%
  arrange(desc(arr_delay))



###############################################
# 7. Sorting Within Groups
###############################################
# Important concept:
# arrange() ignores grouping unless .by_group = TRUE

# Example (incorrect grouped sorting)

flights %>%
  group_by(carrier) %>%
  arrange(desc(arr_delay))

# Correct way: sort inside each group

flights %>%
  group_by(carrier) %>%
  arrange(desc(arr_delay), .by_group = TRUE) %>%
  select(carrier, arr_delay, everything())



###############################################
# 8. Top N Rows Per Group
###############################################
# Instead of sorting the entire dataset, use slice.

# Top 3 delayed flights per carrier

flights %>%
  group_by(carrier) %>%
  slice_max(arr_delay, n = 3)

# Top 3 least delayed flights per carrier

flights %>%
  group_by(carrier) %>%
  slice_min(arr_delay, n = 3)



###############################################
# 9. Sorting After Summarise
###############################################
# Example: Rank airlines by average delay.

flights %>%
  group_by(carrier) %>%
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE)) %>%
  arrange(desc(avg_delay))

# If additional columns are needed

flights %>%
  group_by(carrier) %>%
  summarise(
    avg_delay = mean(arr_delay, na.rm = TRUE),
    year = first(year),
    month = first(month),
    day = first(day),
    dep_time = first(dep_time),
    arr_time = first(arr_time)
  ) %>%
  arrange(desc(avg_delay))



###############################################
# 10. Sorting Character Columns
###############################################

flights %>%
  arrange(tailnum)



###############################################
# 11. Sorting by Date & Time
###############################################
# Flights dataset has separate date components:
# year, month, day, dep_time

flights %>%
  arrange(year, month, day, dep_time)



###############################################
# 12. Custom Sorting Logic
###############################################
# Sort:
# 1. On-time flights
# 2. Delayed flights

flights %>%
  arrange(arr_delay > 0) %>%
  select(carrier, flight, arr_delay)

# Explanation:
# Logical sorting places FALSE first
# FALSE → on-time flights
# TRUE  → delayed flights



###############################################
# 13. Ranking Functions
###############################################
# Example vector
# c(10,20,20,40)

# row_number()
# No ties allowed → sequential numbering

# min_rank()
# Ties share rank, next rank skipped

# dense_rank()
# Ties share rank, no rank skipped

# percent_rank()
# Rank scaled between 0 and 1


# Example: rank flights by delay

flights %>%
  mutate(delay_rank = min_rank(desc(arr_delay))) %>%
  arrange(delay_rank)



###############################################
# Demonstration of Ranking Functions
###############################################

x <- c(10, 20, 20, 40, 60)

tibble(
  value = x,
  row_num = row_number(x),
  min = min_rank(x),
  dense = dense_rank(x),
  percent = percent_rank(x)
)



###############################################
# Quiz
###############################################



###############################################
# Assignment
###############################################



###############################################
# Resources
###############################################

# https://dplyr.tidyverse.org/reference/arrange.html



###############################################
# END OF FILE
###############################################