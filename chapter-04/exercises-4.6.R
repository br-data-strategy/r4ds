# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 4.6 Exercises
# Source: https://r4ds.hadley.nz/workflow-style.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 4.6 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# Restyle the following pipelines following the guidelines above.

flights|>filter(dest=="IAH")|>group_by(year,month,day)|>summarize(n=n(),
delay=mean(arr_delay,na.rm=TRUE))|>filter(n>10)

flights|>filter(carrier=="UA",dest%in%c("IAH","HOU"),sched_dep_time>
0900,sched_arr_time<2000)|>group_by(flight)|>summarize(delay=mean(
arr_delay,na.rm=TRUE),cancelled=sum(is.na(arr_delay)),n=n())|>filter(n>10)
#
# Your code below:
install.packages("styler")
library(nycflights13)
library(tidyverse)
library(styler)

flights|>
  filter(dest == "IAH")|>
  group_by(year, month, day)|>
  summarize(
    n = n(), delay = mean(arr_delay, na.rm = TRUE))|>
  filter(n > 10)

flights|>
  filter(carrier == "UA", dest%in%c("IAH", "HOU"), 
         sched_dep_time > 0900, sched_arr_time < 2000)|>
  group_by(flight)|>
  summarize(
    delay = mean(arr_delay,na.rm = TRUE), 
    cancelled = sum(is.na(arr_delay)), n = n())|>
  filter(n > 10)
