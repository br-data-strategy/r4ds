# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 3.2.5 Exercises
# Source: https://r4ds.hadley.nz/data-transform.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 3.2.5 --- 1-3
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz

library(tidyverse)
library(dplyr)
library(nycflights13)

# Exercise 1 ----
# In a single pipeline for each condition, find all flights that meet the condition:
    # Had an arrival delay of two or more hours
    # Flew to Houston (IAH or HOU)
    # Were operated by United, American, or Delta
    # Departed in summer (July, August, and September)
    # Arrived more than two hours late but didn’t leave late
    # Were delayed by at least an hour, but made up over 30 minutes in flight
#
# Your code below:

flights <- flights

flights |>
    filter(arr_delay >= 120) |> # arrival delay of two hours or more
    filter(dest %in% c("IAH", "HOU")) |> # flew to Houston
    filter(month %in% c(7, 8, 9)) |>  # departed in summer
    filter(arr_delay >= 120 & dep_delay <= 0) |>  # arrived more than two hours late but didnt leave late
    filter(dep_delay >= 60 & dep_delay - arr_delay > 30) # delayed by at least an hour, but made up over 30 minutes in flight


# Exercise 2 ----
# Sort flights to find the flights with the longest departure delays. Find the flights that left earliest in the morning.
#
# Your code below:
flights |> 
  arrange(desc(dep_delay))


# Exercise 3 ----
# Sort flights to find the fastest flights. (Hint: Try including a math calculation inside of your function.)
#
# Your code below:
flights |> 
  arrange(air_time) |> 
  relocate(air_time)