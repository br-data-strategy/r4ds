# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 12.4.4 Exercises
# Source: https://r4ds.hadley.nz/logicals.html#exercises-2
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section  12.4.4: 1 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# What will sum(is.na(x)) tell you? How about mean(is.na(x))?

#
# Your code below:
#
# sum(is.na(x)) gives you the total number of missing values in x
# mean(is.na(x)) gives you the proportion of missing values in x

sum(is.na(flights))
mean(is.na(flights))
