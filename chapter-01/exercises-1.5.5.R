# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 1.5.5 Exercises
# Source: https://r4ds.hadley.nz/data-visualize.html#exercises-2
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 1.5.5 --- 1.5.5: 1-7
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
# 
library(tidyverse)
library(palmerpenguins)
library(ggplot2)
library(ggthemes)

#
# Exercise placeholders below:
#
# Exercise 1 ----
# The mpg data frame that is bundled with the ggplot2 package contains 234 observations collected by the US Environmental Protection Agency on 38 car models. 
# Which variables in mpg are categorical? Which variables are numerical? 
# (Hint: Type ?mpg to read the documentation for the dataset.) How can you see this information when you run mpg?
#
# Your code below:
    # categorical =  6
    # numerical / integer = 5
#
# Exercise 2 ----
# Make a scatterplot of hwy vs. displ using the mpg data frame. 
# Next, map a third, numerical variable to color, then size, then both color and size, then shape. 
# How do these aesthetics behave differently for categorical vs. numerical variables?
#
# Your code below:
# continuous variables cannot be mapped to shape

ggplot(mpg, aes(x=hwy,y=displ,color=year)) + 
  geom_point()
#
# Exercise 3 ----
# In the scatterplot of hwy vs. displ, what happens if you map a third variable to linewidth?
#
# Your code below:
# Nothing happens because linewidth is for lines, not points
ggplot(mpg, aes(x=hwy,y=displ,color=year, linewidth = year)) + 
  geom_point()
# 
# Exercise 4 ----
# What happens if you map the same variable to multiple aesthetics?
#
# Your code below:
# variable will take on both aesthetics 
ggplot(mpg, aes(x=hwy,y=displ,color=class, shape = class)) + 
  geom_point()

# 
# Exercise 5 ----
# Make a scatterplot of bill_depth_mm vs. bill_length_mm and color the points by species. 
# What does adding coloring by species reveal about the relationship between these two variables? What about faceting by species?
#
# Your code below:
# bill depth and length are positively correlated when accounting for species
penguins |> 
ggplot(
  mapping = aes (x = bill_depth_mm, y = bill_length_mm)) + 
  geom_point(mapping = aes (color = species))

# Exercise 6 ----
# Why does the following yield two separate legends? How would you fix it to combine the two legends?

# Your code below:
# two legends are appearing because species is mapped to both color and species and labs  (color)
ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, 
    y = bill_depth_mm, 
    color = species, 
    shape = species
  )
) +
  geom_point() +
  labs(color = "Species")

# Corrected version -- removed species from labs
ggplot(data = penguins, 
       mapping = aes(
         x = bill_length_mm, 
         y = bill_depth_mm, 
         color = species, 
         shape = species)) +
  geom_point()



# Exercise 7 ----
# Create the two following stacked bar plots. Which question can you answer with the first one? Which question can you answer with the second one?
  

# Your code below:
ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill") # distribution of penguin species on seperate islands 

ggplot(penguins, aes(x = species, fill = island)) +
  geom_bar(position = "fill") # distribution of island natives per species
# 