# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 2.5 Exercises
# Source: https://r4ds.hadley.nz/workflow-basics.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 2.5 ---2.5: 1-3
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# Why does this code not work?

my_variable <- 10
my_varıable
#
# Your code below:

# "my_varıable" is not the same as "my_variable." The i looks different

my_variable #corrected version

# Exercise 2 ----
# Tweak each of the following R commands so that they run correctly:
#   
#   libary(todyverse)
# 
# ggplot(dTA = mpg) + 
#   geom_point(maping = aes(x = displ y = hwy)) +
# geom_smooth(method = "lm)
#
# Your code below:

library(tidyverse)
library(ggplot2)

ggplot(
  data = mpg,
  mapping = aes(x=displ, y = hwy)) + 
  geom_point() +
  geom_smooth(method = "lm")


# Exercise 3 ----
# Press Option + Shift + K / Alt + Shift + K. What happens? How can you get to the same place using the menus?
#
# Your code below:
# Opens up keyboard shortcuts
# Can also go to Tools > Keyboard Shortcuts help
#
# Continue as needed for the exercises assigned in the syllabus.
