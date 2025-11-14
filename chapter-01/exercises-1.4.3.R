# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 1.4.3 Exercises
# Source: https://r4ds.hadley.nz/data-visualize.html#exercises-1
# NOTE: For full exercise text, see the linked R4DS chapter above.
# 
#
# --- Exercises from R for Data Science (2e) — Section 1.4.3 --- 1.4.3: 1-2
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below: 
# 
library(tidyverse)
library(palmerpenguins)
library(ggplot2)
library(ggthemes)
#
# Exercise 1 ----
# Make a bar plot of species of penguins, where you assign species to the y aesthetic. 
# How is this plot different?
#
# Your code below:
# makes horizontal instead of vertical bars
    penguins |> 
      ggplot (aes(y = fct_infreq(species))) +
      geom_bar()
#
# Exercise 2 ----
# How are the following two plots different? 
# Which aesthetic, color or fill, is more useful for changing the color of bars?
#
# Your code below:

    ggplot(penguins, aes(x = species)) +
      geom_bar(color = "red") # changes the outline to red
    
    ggplot(penguins, aes(x = species)) +
      geom_bar(fill = "red") #changes the actual fill of bar to red


# Continue as needed for the exercises assigned in the syllabus.
