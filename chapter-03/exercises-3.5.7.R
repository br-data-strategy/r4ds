# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 3.5.7 Exercises
# Source: https://r4ds.hadley.nz/data-transform.html#exercises-2
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 3.5.7 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:

library(tidyverse)
library(dplyr)
library(nycflights13)
#
# Exercise 1 ----
# Which carrier has the worst average delays? 
# Challenge: can you disentangle the effects of bad airports vs. bad carriers? Why/why not? 
# (Hint: think about flights |> group_by(carrier, dest) |> summarize(n()))
#
# Your code below:

flights <- flights

# F9 has the worst average delays
      flights |> 
       group_by(carrier, origin) |> 
       summarize(avg_delay = mean (dep_delay, na.rm = TRUE)) |> 
       arrange (desc(avg_delay))
      
# Exercise 2 ----
# Find the flights that are most delayed upon departure to each destination.
#
# Your code below:
      # grouped by airport
      flights |> 
        group_by(carrier,dest) |> 
        slice_max(dep_delay, n=1) |> 
        arrange (desc(dep_delay)) |> 
        select (carrier, dep_delay)



# Exercise 3 ----
# How do delays vary over the course of the day? Illustrate your answer with a plot.
#
# Your code below:

ggplot(flights) +
  geom_point(aes(x=sched_dep_time, y=dep_delay))
