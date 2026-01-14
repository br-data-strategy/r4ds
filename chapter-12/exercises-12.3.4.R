# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 12.3.4 Exercises
# Source: https://r4ds.hadley.nz/logicals.html#exercises-1
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 12.3.4: 1-2
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
# 
# 
# 
#
# Exercise placeholders below:
#
# Exercise 1 ----
# Find all flights where arr_delay is missing but dep_delay is not. 
# Find all flights where neither arr_time nor sched_arr_time are missing, but arr_delay is.
#
# Your code below:
    # Find all flights where arr_delay is missing but dep_delay is not. 
      x <- flights |> 
        filter(arr_delay %in% NA) |> 
        filter(!dep_delay %in% NA)
      
    # Find all flights where neither arr_time nor sched_arr_time are missing, but arr_delay is.
      flights |> 
        filter(!arr_delay %in% NA) |> 
        filter(!sched_arr_time %in% NA) |> 
        filter(!arr_delay %in% NA)

#
# Exercise 2 ----
# How many flights have a missing dep_time? What other variables are missing in these rows? What might these rows represent?
#
# Your code below:

# 8255 flights have missing dep_time      
sum(is.na(flights$dep_time)) 

# they also have missing dep_delay, arr_time, and arr_delay so they were probably cancelled      
x <- flights |> 
  filter(dep_time %in% NA)       
      
      
# Continue as needed for the exercises assigned in the syllabus.
