# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 2.5 Exercises
# Source: https://r4ds.hadley.nz/workflow-basics.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 2.5 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# Why does this code not work?

my_variable <- 10
my_varıable
#> Error: object 'my_varıable' not found

# Answer: B/c the second row misspells variable so it can't recall the vector

# Your code below:N/A
#
#
# Exercise 2 ----
# Tweak each of the following R commands so that they run correctly:

libary(todyverse)

ggplot(dTA = mpg) + 
  geom_point(maping = aes(x = displ y = hwy)) +
  geom_smooth(method = "lm)"

#
# Your code below:
#
library(tidyverse)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm")


# Exercise 3 ----
# Press Option + Shift + K / Alt + Shift + K. What happens? How can you get to 
# the same place using the menus?

# Answer: It shows you the keyboard shortcuts. Go to the help section at the top 
# of the page and click "Keyboard Shortcute Help."

# Your code below:N/A
#
#