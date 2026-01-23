# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 16.4.1 Exercises
# Source: https://r4ds.hadley.nz/factors.html#exercises-1
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 16.4.1 1-3---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz

library(forcats)
library(ggplot2)


# Exercise placeholders below:
#
# Exercise 1 ----
# There are some suspiciously high numbers in tvhours. Is the mean a good summary?
#
# Your code below:
# No the mean would not be a good summary because of outliers

summary(gss_cat$tvhours)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.000   1.000   2.000   2.981   4.000  24.000 
# NA's 10146 

ggplot(gss_cat, aes(x=tvhours)) +
  geom_histogram()

# Exercise 2 ----
# For each factor in gss_cat identify whether the order of the levels is arbitrary or principled.
#
# Your code below:
# All of them are arbitrary except for rincome
#
# Exercise 3 ----
# Why did moving “Not applicable” to the front of the levels move it to the bottom of the plot?
#
# Your code below:
# There is no "after" so it puts it at end