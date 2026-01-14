# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 13.4.8 Exercises
# Source: https://r4ds.hadley.nz/numbers.html#exercises-1
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 13.4.5: : 1-4 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# Explain in words what each line of the code used to generate Figure 13.1 does.
#
# Your code below:

library(tidyverse)
library(nycflights13)


flights |> 
  group_by(hour = sched_dep_time %/% 100) |> # creates the column hour which tells us what hour of day flight departed and groups by that hour
  summarize(prop_cancelled = mean(is.na(dep_time)), n = n()) |> #creates two columns with the proportion cancelled in that hour and the count
  filter(hour > 1) |> # removes midnight
  ggplot(aes(x = hour, y = prop_cancelled)) + # creates plot with hour on x axis and proportion cancelled on y
  geom_line(color = "grey50") + # makes line plot, color is gray
  geom_point(aes(size = n)) # adds points, size is based on count of flights cancelled that hour


#
# Exercise 2 ----
# What trigonometric functions does R provide? Guess some names and look up the documentation. Do they use degrees or radians?
#
# Your code below:

# cos(x)
# sin(x)
# tan(x)
# acos(x)
# asin(x)
# atan(x)
# atan2(y, x)
# 
# cospi(x)
# sinpi(x)
# tanpi(x)
# 
# Angles are in radians, not degrees


# Exercise 3 ----
# Currently dep_time and sched_dep_time are convenient to look at, but hard to compute with because they’re not really continuous numbers. 
# You can see the basic problem by running the code below: there’s a gap between each hour.
# 
flights |> 
  filter(month == 1, day == 1) |> 
  ggplot(aes(x = sched_dep_time, y = dep_delay)) +
  geom_point()


# Convert them to a more truthful representation of time (either fractional hours or minutes since midnight).

#
# Your code below:

# # divide dep_time and sched_dep_time by 100 to get hour since midnight, multiply by 60 for minutes. add the remainder of dep_time. x %% 1440 will convert 1440 (midnight) to zero
x <- flights |> 
  mutate(
    dep_time_mins = 
      (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440, 
    sched_dep_time_mins = (sched_dep_time %/% 100 * 60 + sched_dep_time %% 100) %% 1440) |> 
  select(sched_dep_time_mins, dep_time_mins)

  x |> 
  ggplot(aes(x = sched_dep_time_mins, y = dep_time_mins)) +
  geom_point()


# Exercise 4 ----
# Round dep_time and arr_time to the nearest five minutes.
#
# Your code below:

flights |> 
  mutate(dep_time_round = round(dep_time / 5) * 5)
  

flights |> 
  mutate(arr_time_round = round(arr_time / 5) * 5)  
