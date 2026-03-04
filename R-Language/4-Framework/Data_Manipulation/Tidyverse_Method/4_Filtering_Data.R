#===============================================================================
# 📌 Topic : Filtering Rows with dplyr – filter(), slice(), Logical Conditions
#===============================================================================
# Topics Covered
# --------------
# 1. Syntax
# 2. Filtering with Single Condition
# 3. Filtering with Multiple Conditions
# 4. Filtering Rows by Position
# 5. Filtering with Complex Conditions
# 6. Comparison Operators
# 7. Filtering Missing Values
# 8. Filtering Using Range
# 9. Dynamic Column Filtering
# 10. Unique Rows Filtering
# 11. Filtering Using Aggregates
# 12. Filtering Using Window Functions
# 13. Filtering using case_when()
# 14. Filtering using near()
# 15. Filtering with String Conditions
# 16. Filtering Multi-Column Conditions
# 17. Filtering with Grouped Data
# 18. Filtering After Join
# 19. Filtering Top N Values
# 20. Filtering with Date-Time Logic
# 21. Filtering Rows Based on Another Table
# 22. Filtering Using Cumulative Logic
# 23. Practical Business Scenarios
#===============================================================================


library(dplyr)
library(nycflights13)



###############################################
# 1. Syntax
###############################################
# Filtering (subsetting rows)

filter(.data, condition1, condition2, ...)



###############################################
# 2. Filtering with Single Condition
###############################################

# Flights in January

jan_flights <- flights %>%
  filter(month == 1)



###############################################
# 3. Filtering with Multiple Conditions
###############################################

# AND condition

flights %>%
  filter(month == 1, day == 1)

# OR condition

flights %>%
  filter(month == 6 | month == 7 | month == 8)

# Long delays (>2 hours)

flights %>%
  filter(arr_delay > 120)

# Character filtering

flights %>%
  filter(carrier == "AS")

# Multiple values

flights %>%
  filter(carrier %in% c("UA", "AA"))



###############################################
# Calculated Expressions
###############################################

# Flights with speed > 500 mph

flights %>%
  mutate(speed = (distance / air_time) * 60) %>%
  filter(speed > 500)



###############################################
# 4. Filtering Rows Using Their Positions
###############################################

# slice(): select rows by index

flights |> slice(1, 2)

flights |> slice(1:4)

# First rows

flights |> slice_head(n = 4)

# Last rows

flights |> slice_tail(n = 4)

# Minimum values

flights |> slice_min(distance, n = 5) |>
  select(carrier, flight, distance)

# Maximum values

flights |> slice_max(distance, n = 7) |>
  select(carrier, flight, distance)



###############################################
# Random Sampling
###############################################

flights |> slice_sample(n = 7)

flights |> slice_sample(prop = 0.05)

flights |> slice_sample(n = 7, replace = TRUE)

flights |>
  filter(!is.na(air_time)) |>
  slice_sample(n = 5, weight_by = air_time) |>
  select(carrier, flight, air_time)



###############################################
# 5. Filtering with Complex Conditions
###############################################

# Delayed but not cancelled

flights %>%
  filter(arr_delay > 0 & !is.na(arr_delay))

# Extreme delays in winter

flights %>%
  filter(month %in% c(12,1,2), arr_delay > 180)

# Multiple column condition

flights %>%
  filter(
    rowSums(across(c(air_time, dep_delay, arr_delay)), na.rm = TRUE) > 500
  )



###############################################
# 6. Comparison Operators
###############################################

# Equal

flights %>%
  filter(dest == "MIA")

# Not equal

flights %>%
  filter(origin != "EWR")

# Greater than

flights %>%
  filter(dep_delay > 120)

# Less than

flights %>%
  filter(dep_time < 600)

# %in%

flights %>%
  filter(carrier %in% c("UA","AA","DL"))



###############################################
# Boolean Operators
###############################################

# AND

flights |> filter(month == 1 & day == 1)

# OR

flights |> filter(month == 1 | month == 11)

# NOT

flights |> filter(!(arr_delay > 120))



###############################################
# 7. Filtering Missing Values
###############################################

# Incorrect

flights %>% filter(dep_time == NA)

# Correct

flights %>% filter(is.na(dep_time))

# Non-missing values

flights %>%
  filter(!is.na(dep_delay))

# Cancelled flights

flights %>%
  filter(is.na(dep_time) & is.na(arr_time))

# Remove missing rows

flights %>%
  drop_na(dep_time, arr_time)



###############################################
# Checking Missing Data
###############################################

# Base R

colSums(is.na(flights))

missing_counts <- colSums(is.na(flights))
missing_counts[missing_counts > 0]

# dplyr

flights %>%
  summarise(across(everything(), ~ sum(is.na(.x))))



###############################################
# data.table approach
###############################################

library(data.table)

flights_dt <- as.data.table(flights)

flights_dt[, lapply(.SD, function(x) sum(is.na(x)))]



###############################################
# Visualizing Missing Data
###############################################

library(naniar)

gg_miss_var(flights)



###############################################
# 8. Filtering Using Range
###############################################

filter(flights, between(month, 6, 8))

filter(flights, month >= 6 & month <= 8)



###############################################
# 9. Dynamic Column Filtering
###############################################

col_name <- "distance"

flights %>%
  filter(.data[[col_name]] > 1000)



###############################################
# 10. Unique Rows Filtering
###############################################

flights |> distinct(carrier)

flights |> distinct(origin, dest)

flights |> distinct(carrier, .keep_all = TRUE)

flights |> summarise(unique_planes = n_distinct(tailnum))



###############################################
# 11. Filtering Using Aggregates
###############################################

# Average delay > 20

flights %>%
  group_by(carrier) %>%
  filter(mean(dep_delay, na.rm = TRUE) > 20)

# High traffic airports

flights %>%
  group_by(dest) %>%
  filter(n() > 10000)

# First flight per day

flights %>%
  group_by(carrier, year, month, day) %>%
  filter(dep_time == min(dep_time, na.rm = TRUE))

# Filtering by sum

flights %>%
  group_by(year, month, day) %>%
  filter(sum(distance) > 1000000)



###############################################
# 12. Filtering Using Window Functions
###############################################

# Most delayed flight per carrier

flights %>%
  group_by(carrier) %>%
  filter(row_number(desc(arr_delay)) == 1)

# Top 3 delays per airport

flights %>%
  group_by(origin) %>%
  filter(min_rank(desc(arr_delay)) <= 3)

# Delay brackets

flights %>%
  group_by(year, month, day) %>%
  filter(dense_rank(desc(arr_delay)) <= 2)

# Worst 1% delays

flights %>%
  filter(percent_rank(arr_delay) >= 0.99)



###############################################
# 13. Filtering Using case_when()
###############################################

flights_classified <- flights %>%
  select(carrier, flight, arr_delay) %>%
  mutate(
    delay_status = case_when(
      arr_delay < 0   ~ "Early",
      arr_delay == 0  ~ "On Time",
      arr_delay <= 30 ~ "Small Delay",
      arr_delay <= 60 ~ "Late",
      arr_delay > 60  ~ "Very Late",
      TRUE            ~ "Cancelled/Unknown"
    )
  )



###############################################
# 14. Filtering Using near()
###############################################

weather |> filter(near(temp, 32))

weather |> filter(near(humid, 44))



###############################################
# 15. Filtering with String Conditions
###############################################

flights %>% filter(carrier == "AA")

flights %>% filter(origin == "JFK")

flights %>% filter(str_detect(dest, "^S"))

flights %>% filter(str_detect(dest, "MIA|MCO|TPA"))



###############################################
# 16. Filtering with Multi-Column Conditions
###############################################

# if_all()

flights %>%
  filter(if_all(c(dep_delay, arr_delay), ~ . > 60))

# if_else()

flights %>%
  mutate(
    status = if_else(
      arr_delay > 60,
      "Very Late",
      "Acceptable",
      missing = "Cancelled/Unknown"
    )
  )



###############################################
# 17. Filtering with Grouped Data
###############################################

# Worst delay per month

flights %>%
  group_by(month) %>%
  filter(arr_delay == max(arr_delay, na.rm = TRUE))

# Above average delay

flights %>%
  group_by(carrier) %>%
  filter(arr_delay > mean(arr_delay, na.rm = TRUE))

# Group count

flights |> group_by(carrier) |> n_groups()

flights |> group_by(dest) |> summarise(num_of_dest = n())



###############################################
# 18. Filtering After Join
###############################################

flights %>%
  left_join(airlines, by = "carrier") %>%
  filter(name == "Delta Air Lines Inc.")



###############################################
# 19. Filtering Top N Values
###############################################

flights %>%
  slice_max(arr_delay, n = 10)



###############################################
# 20. Filtering with Date-Time Logic
###############################################

flights %>%
  filter(dep_time >= 2200 | dep_time <= 500)



###############################################
# 21. Filtering Rows Based on Another Table
###############################################

ca_airports <- airports %>%
  filter(tzone == "America/Chicago")

flights %>%
  semi_join(ca_airports, by = c("dest" = "faa"))



###############################################
# 22. Filtering Using Cumulative Logic
###############################################

f_cum <- flights %>%
  select(origin, month, day, dep_delay) %>%
  filter(origin == "JFK", !is.na(dep_delay)) %>%
  group_by(month, day) %>%
  arrange(dep_delay) %>%
  mutate(running_delay = cumsum(dep_delay)) %>%
  filter(running_delay <= 1000)



###############################################
# 23. Practical Business Scenarios
###############################################

# Flights delayed >30 mins in summer from JFK

flights %>%
  filter(origin == "JFK",
         month %in% 6:8,
         arr_delay > 30)

# Flights cancelled due to weather

weather_delays <- flights %>%
  filter(is.na(dep_time))



###############################################
# Quiz
###############################################



###############################################
# Assignment
###############################################



###############################################
# Resources
###############################################

# https://dplyr.tidyverse.org/reference/filter.html



###############################################
# END OF FILE
###############################################