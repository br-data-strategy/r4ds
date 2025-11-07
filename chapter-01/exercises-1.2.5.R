# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 1.2.5 Exercises
# Source: https://r4ds.hadley.nz/data-visualize.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 1.2.5 --- 1-5, 7
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:

library(tidyverse)
library(palmerpenguins)
library(ggplot2)
library(ggthemes)

# Exercise 1 ----
# How many rows are in penguins? How many columns?

# Your code below:
  # 344 rows and 8 columns


# Exercise 2 ----
#  What does the bill_depth_mm variable in the penguins data frame describe? Read the help for ?penguins to find out.
  #bill_depth_mm -- a number denoting bill depth (millimeters)


# Exercise 3 ----
# Make a scatterplot of bill_depth_mm vs. bill_length_mm. bill_depth_mm on the y-axis and bill_length_mm on the x-axis. 
  ## Describe the relationship between these two variables.
  # No visible relationship between bill length and depth, even when looking at species
  
  penguins |> 
  ggplot(
    mapping = aes (x = bill_length_mm, y = bill_depth_mm)) + 
    geom_point(mapping = aes (color = species))

# Exercise 4 ----
# What happens if you make a scatterplot of species vs. bill_depth_mm? 
    #Species is a categorical variable so they are just lines. 
    ggplot(
      data = penguins,
      mapping = aes (x = species, y = bill_depth_mm)
    ) + 
      geom_point()
    
    ## What might be a better choice of geom?
    # Bar chart
    
# Exercise 5 ----
# Why does the following give an error and how would you fix it?
    # does not denote an x or y axis. Would add x and y
    ggplot(data = penguins) + 
      geom_point()

    # Fixed version
    ggplot(data = penguins, mapping = aes (x = bill_length_mm, y = bill_depth_mm)) + 
      geom_point()

# Exercise 7 ----
# Add the following caption to the plot you made in the previous exercise: “Data come from the palmerpenguins package.” 
    ## Hint: Take a look at the documentation for labs().
    ggplot(
      data = penguins,
      mapping = aes(x = flipper_length_mm, y = body_mass_g)
    ) +
      geom_point(aes(color = species, shape = species)) +
      geom_smooth(method = "lm") +
      labs(
        title = "DID YOU KNOW?! Penguins body mass aligns with flipper length",
        subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
        caption = "Data comes from the palmerpenguins package. (caption)",
        x = "Flipper length (mm)", y = "Body mass (g)",
        tag = "This is a tag",
        alt = "this is alt",
        alt_insight = "this is alt_insight",
        color = "Species", shape = "Species"
      ) +
      scale_color_colorblind()




