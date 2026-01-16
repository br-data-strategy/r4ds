# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 15.6.4 Exercises
# Source: https://r4ds.hadley.nz/regexps.html#exercises-2
# NOTE: For full exercise text, see the linked R4DS chapter above.
# --- Exercises from R for Data Science (2e) — Section 15.6.4: 1 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# For each of the following challenges, try solving it by using both a single regular expression, 
# and a combination of multiple str_detect() calls.

    # Find all words that start or end with x.
    # Find all words that start with a vowel and end with a consonant.
    # Are there any words that contain at least one of each different vowel?
# Your code below:
library(tidyverse)


# Find all words that start or end with x.
str_view(words, "(^x|x$)")

words[
  str_detect(words, "^x") & 
    !str_detect(words, "x$")]


# Find all words that start with a vowel and end with a consonant.
words[
  str_detect(words, "^[aeiou]") & 
    !str_detect(words, "[aeiou]$")]

# Are there any words that contain at least one of each different vowel?
words[str_detect(words, "a.*e.*i.*o.*u")]

words[
  str_detect(words, "a") &
  str_detect(words, "e") &
  str_detect(words, "i") &
  str_detect(words, "o") &
  str_detect(words, "u")
]
