# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 17.2.5 Exercises
# Source: https://r4ds.hadley.nz/datetimes.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 17.2.5 1-3 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#

library(lubridate)
library(tidyverse)
library(nycflights13)

# Exercise 1 ----
# What happens if you parse a string that contains invalid dates?
# 
ymd(c("2010-10-10", "bananas"))
#
# Your code below:

# [1] "2010-10-10" NA          
# Warning message:
#  1 failed to parse. 



# Exercise 2 ----
# What does the tzone argument to today() do? Why is it important?
#
# Your code below:
#tzone specifies which time zone you would like the current time in. 
# the value of "today" depends on what time zone you are in

# Exercise 3 ----
# For each of the following date-times, show how you’d parse it using a readr column specification and a 
# lubridate function.

d1 <- "January 1, 2010"
d2 <- "2015-Mar-07"
d3 <- "06-Jun-2017"
d4 <- c("August 19 (2015)", "July 1 (2015)")
d5 <- "12/30/14" # Dec 30, 2014
t1 <- "1705"
t2 <- "11:15:10.12 PM"
#
# Your code below:

mdy(d1)
ymd(d2)
dmy(d3)
mdy(d4)
mdy(d5)
hms(t2)

# couldnt figure out t1
