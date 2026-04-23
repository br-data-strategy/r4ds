# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 3.2.5 Exercises
# Source: https://r4ds.hadley.nz/data-transform.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 3.2.5 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# In a single pipeline for each condition, find all flights that meet the condition:

# - Had an arrival delay of two or more hours
# - Flew to Houston (IAH or HOU)
# - Were operated by United, American, or Delta
# - Departed in summer (July, August, and September)
# - Arrived more than two hours late but didn’t leave late
# - Were delayed by at least an hour, but made up over 30 minutes in flight
#
# Your code below:
#
install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

glimpse(flights)
?flights

flights |> 
  filter(arr_delay >= 120)
# 10,2000 flights arrived 2 or more hours late

flights |> 
  filter(dest == "IAH" | dest == "HOU")
# 9,313 flights flew to IAH or HOU

flights |> 
  filter(carrier %in% c("UA","DL","AA"))
# 139,504 flights were United, Delta or American

flights |> 
  filter(month %in% c("7","8","9"))
# 86,326 flights deparred in July, August or September

flights |> 
  filter(arr_delay > 120 & dep_delay <= 0)
# 29 flights arrived more than 2 hours late but still left on time or early

flights |> 
  filter(dep_delay >= 60 & dep_delay - arr_delay > 30)
# 1,844 flights were delayed by at least an hour but made up over 30 minutes
# in flight
#
# Exercise 2 ----
# Sort flights to find the flights with the longest departure delays. Find the 
# flights that left earliest in the morning.
#
# Your code below:
flights |> 
  arrange(desc(dep_delay)) |> 
  arrange(sched_dep_time) |> 
  relocate(dep_delay, sched_dep_time)
#
# Exercise 3 ----
# Sort flights to find the fastest flights. 
# (Hint: Try including a math calculation inside of your function.)
#
# Your code below:
flights |> 
  mutate(speed = distance / (air_time/60)) |> 
  arrange(desc(speed)) |> 
  relocate(speed)

