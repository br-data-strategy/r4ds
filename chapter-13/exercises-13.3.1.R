# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 13.3.1 Exercises
# Source: https://r4ds.hadley.nz/numbers.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 13.3.1: 1-2 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# How can you use count() to count the number of rows with a missing value for a given variable?
#
# Your code below:

library(tidyverse)
library(nycflights13)

flights |> count(is.na(dep_time))

# Exercise 2 ----
# Expand the following calls to count() to instead use group_by(), summarize(), and arrange():

flights |> count(dest, sort = TRUE)

flights |> count(tailnum, wt = distance)

# Your code below:

flights |> 
  group_by(dest) |> 
  summarise(n = n()) |> 
  arrange(desc(n))

flights |> group_by(tailnum) |> 
  summarize(n = sum(distance)) 
