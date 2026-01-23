# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 20.2.9 Exercises
# Source: https://r4ds.hadley.nz/spreadsheets.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 20.2.9 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
# 
library(readxl)
library(tidyverse)
library(writexl)
library(janitor)
#
# Exercise 1 ----
# In an Excel file, create the following dataset and save it as survey.xlsx. 
# Alternatively, you can download it as an Excel file from here.
# Then, read it into R, with survey_id as a character variable and 
# n_pets as a numerical variable.
#
# Your code below:
survey <- read_xlsx(
  "survey.xlsx",
  col_types = c("text", "numeric"))
#
# Exercise 2 ----
# In another Excel file, create the following dataset and save it as roster.xlsx. 
# Alternatively, you can download it as an Excel file from here.
# Then, read it into R. The resulting data frame should be called roster and 
# should look like the following.
#
# Your code below:

roster <- x <- read_xlsx(
  "roster.xlsx")

# Exercise 3 ----
# In a new Excel file, create the following dataset and save it as sales.xlsx. 
# Alternatively, you can download it as an Excel file from here.
# Read sales.xlsx in and save as sales. The data frame should look like the following, 
# with id and n as column names and with 9 rows.
#
# Your code below:
sales <- read_xlsx(
  "sales.xlsx",
  skip = 3,
  col_names = c("id","n"))


#
# Exercise 4 ----
# Recreate the bake_sale data frame, write it out to an Excel file using the write.xlsx() 
# function from the openxlsx package.
#
# Your code below:

bake_sale <- tibble(
  item     = factor(c("brownie", "cupcake", "cookie")),
  quantity = c(10, 5, 8)
)

write_xlsx(bake_sale, path = "bake-sale.xlsx")

#
## Exercise 5 ----
# In Chapter 7 you learned about the janitor::clean_names() function to turn column names into snake case. 
# Read the students.xlsx file that we introduced earlier in this section and use this function to 
# “clean” the column names.
#
# Your code below:
students <- read_xlsx("students.xlsx") |> 
  clean_names()

#
# Exercise 6 ----
# What happens if you try to read in a file with .xlsx extension with read_xls()?
#
# Your code below:


survey <- read_xls(
  "survey.xlsx",
  col_types = c("text", "numeric"))

# Error: 
#   filepath: C:\Users\elyles\Documents\r4ds-fork\survey.xlsx
#   libxls error: Unable to open file
#