# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 1.2.5 Exercises
# Source: https://r4ds.hadley.nz/data-visualize.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 1.2.5 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# How many rows are in penguins? How many columns?
# Answer: 344 rows, 8 columns
#
# Code:

#install packages
install.packages("palmerpenguins")
install.packages("ggthemes")

# load libraries
library(tidyverse)
library(janitor)
library(palmerpenguins)
#> 
#> Attaching package: 'palmerpenguins'
#> The following objects are masked from 'package:datasets':
#> 
#>     penguins, penguins_raw
library(ggthemes)
#
#preview the data
glimpse(penguins)
view(penguins)
summary(penguins)
#
#
# Exercise 2 ----
# What does the bill_depth_mm variable in the penguins data frame describe?
# Read the help for ?penguins to find out.
#
# Answer: a number denoting bill depth (millimeters)
#
# Code:

#to learn more about the dataset, open its help page
?penguins
#
# Exercise 3 ----
# Make a scatterplot of bill_depth_mm vs. bill_length_mm. 
# That is, make a scatterplot with bill_depth_mm on the y-axis and 
# bill_length_mm on the x-axis. Describe the relationship between these two variables.

# Answer: as bill length increase, bill depth decreases i.e. the variables
# have a positive correlation
#
# Code:

#scatterplot of bill depth v bill length
ggplot(
  data = penguins,
  mapping = aes(x = bill_length_mm, y = bill_depth_mm)
) +
  geom_point(mapping = aes(color = species, shape = species)) + 
  geom_smooth(method = "lm")

# Exercise 4 ----
# What happens if you make a scatterplot of species vs. bill_depth_mm? 
# What might be a better choice of geom?

# Answer: You see a vertical distribution of bill depth per species, so
# it is hard to accurately see the distribution patterns.
# A better choice of geom would be a box plot because species is a 
# categorical variable.
#
# Code: 

#scatterplot of species v bill depth
ggplot(
  data = penguins,
  mapping = aes(x = species, y = bill_depth_mm)
) +
  geom_point(mapping = aes(color = species, shape = species)) + 
  geom_smooth(method = "lm")

# Exercise 5 ----
# Why does the following give an error and how would you fix it?
ggplot(data = penguins) + 
  geom_point()

# Answer: It has an error bc x and y are not defined. This is how I would fix it: 

# Code: 

ggplot(data = penguins,
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm)) +
  geom_point()

# Exercise 7 ----
# Add the following caption to the plot you made in the previous exercise: 
# “Data come from the palmerpenguins package.”

# Answer: see code below

# Code: 

ggplot(data = penguins,
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm)) +
  geom_point(na.rm = TRUE) +
  labs(captoin = "Data came from the palmerpenguins package.")

# Section 1.4.3 ---
#
# Exercise 1 ----
# Make a bar plot of species of penguins, where you assign species to the y aesthetic. 
# How is this plot different?

# Answer: The bars are horizontal not vertical
#
# Code:

#make a bar graph w species on y axis

ggplot(penguins, aes(y = species)) +
  geom_bar()

# Exercise 2 ----
# How are the following two plots different? Which aesthetic, color or fill,
#  is more useful for changing the color of bars?

# Answer: One just outlines the bar in a color and the other fills in the whole
# bar. Fill is more useful for changing the color of the bars.
#
# Code: 
#compare which aesthetic is better for changing bar colors

ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")

ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")

# Section 1.5.5 ---
#
# Exercise 1 ----
# The mpg data frame that is bundled with the ggplot2 package contains 234 observations
# collected by the US Environmental Protection Agency on 38 car models. 
# Which variables in mpg are categorical? Which variables are numerical? 
# How can you see this information when you run mpg?

# Answer: displ, cyl, cty, year and hwy are numerical. Manufacturer, model, trans,
# drv, fl and class are categorical.You can see this information in the help tab 
# when you run ?mpg
#
# Code:

?mpg

#
# Exercise 2 ----
# Make a scatterplot of hwy vs. displ using the mpg data frame. Next, map a third,
# numerical variable to color, then size, then both color and size, then shape.
# How do these aesthetics behave differently for categorical vs. numerical variables?

# Answer: A numerical variable cannot be mapped to shape, only categorical in 
# which case, each variable is a different shape on the graph.
# the rest can be both categorical and numerical. For color, each categorical 
# variable is a different color, for numerical either each number is a different
# color or it's a spectrum of intensity of color based on how big or small it is.
# However, it doesn't really make sense to use size for a categorical variable 
# bc it doesn't represent an increase or decrease in number, which people 
# usually associate with size.
#
# Code:

g1 = mpg |>
  ggplot(aes(x = hwy, y = displ)) +
  geom_point() +
  theme_minimal() +
  labs(caption = "Original Plot")

# Using numerical variable 'cty' to map to colour, size
g2 = mpg |>
  ggplot(aes(x = hwy, y = displ, color = cyl)) +
  geom_point() +
  theme_minimal()+
  labs(caption = "# cylinders mapped to color")
g3 = mpg |>
  ggplot(aes(x = hwy, y = displ, size = cyl)) +
  geom_point(alpha = 0.5) +
  theme_minimal()+
  labs(caption = "# cylinders mapped to size")
g4 = mpg |>
  ggplot(aes(x = hwy, y = displ, 
             color = cyl, size = cyl)) +
  geom_point() +
  theme_minimal()+
  labs (caption = "# cylinders mapped to size and color")
install.packages("gridExtra")
library(gridExtra)
gridExtra::grid.arrange(g1, g2, g3, g4, ncol = 2)

g5 = mpg |>
  ggplot(aes(x = hwy, y = displ, shape = cyl)) +
  geom_point() +
  theme_minimal()+
  labs(caption = "# cylinders mapped to shape")

gridExtra::grid.arrange(g1, g2, g3, g4, g5, ncol = 3)

g6 = mpg |>
  ggplot(aes(x = hwy, y = displ, size = trans)) +
  geom_point(alpha = 0.5) +
  theme_minimal()+
  labs(caption = "transmission mapped to size")
g7 = mpg |>
  ggplot(aes(x = hwy, y = displ, 
             color = cyl, size = trans)) +
  geom_point() +
  theme_minimal()+
  labs (caption = "transmission mapped to size and color")

g8 = mpg |>
  ggplot(aes(x = hwy, y = displ, shape = trans)) +
  geom_point() +
  theme_minimal()+
  labs(caption = "transmission mapped to shape")

gridExtra::grid.arrange(g6, g7, g8, ncol = 2)

# Exercise 3 ----
# In the scatterplot of hwy vs. displ, what happens if you map a third variable to linewidth?

# Answer: Nothing happens because there are no lines.
#
# Code:

g9 = mpg |>
  ggplot(aes(x = hwy, y = displ, linewidth = cyl)) +
  geom_point() +
  theme_minimal() +
  labs(caption = "# cyclinders mapped to linewidth")

gridExtra::grid.arrange(g9, g7, g8, ncol = 2)

# Exercise 4 ----
# What happens if you map the same variable to multiple aesthetics?

# Answer: Because each model variable is assigned to three different aesthetics
# it makes the plot really hard to read because way to many visual things
# are happening at one time. 
#
# Code:

  mpg |>
  ggplot(aes(x=hwy, y = displ,
             size = model,
             color = model,
             shape = model)) +
  geom_point(alpha = 0.5) +
  theme_classic()

# Exercise 5 ----
# Make a scatterplot of bill_depth_mm vs. bill_length_mm and color the points by species.
# What does adding coloring by species reveal about the relationship between 
# these two variables? What about faceting by species?

# Answer: Adding color by species shows us that each species has a different 
# distribution and relationships of bill length vs bill depth. Faceting shows us
# even more how those relationship differ as the slope differences are clearer.
#
# Code:

# make graph
penguins |>
ggplot(mapping = aes(x = bill_length_mm,
                     y = bill_depth_mm)) +
  geom_point() +
  geom_smooth(se = FALSE,
              method = "lm") +
  theme_classic() +
  labs(x = "Bill Length (mm)", y = "Bill Depth (mm)",
       subtitle = "Bill Depth vs Bill Length")

# add color
penguins |>
  ggplot(mapping = aes(x = bill_length_mm,
                       y = bill_depth_mm, col = species)) +
  geom_point() +
  geom_smooth(se = FALSE,
              method = "lm") +
  theme_classic() +
  labs(x = "Bill Length (mm)", y = "Bill Depth (mm)",
       subtitle = "Bill Depth vs Bill Length w/ Color by Species")

# add faceting 
penguins |>
  ggplot(mapping = aes(x = bill_length_mm,
                       y = bill_depth_mm)) +
  geom_point() +
  geom_smooth(se = FALSE,
              method = "lm") +
  facet_wrap(~species) +
  theme_classic() +
  labs(x = "Bill Length (mm)", y = "Bill Depth (mm)",
       subtitle = "Faceted Bill Depth vs Bill Lenth")

# Exercise 6 ----
#Why does the following yield two separate legends? How would you fix it to 
# combine the two legends?

ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species)) +
  geom_point() +
  labs(color = "Species")

# Answer: It created two legends because we mapped color to species in labs
# when we did not need to do that. See code below for the fix.
#
# Code:

ggplot(data = penguins,   
       mapping = aes(x = bill_length_mm, 
                     y = bill_depth_mm,      
                     color = species, 
                     shape = species)) +   
  geom_point()

# Exercise 7 ----
# Create the two following stacked bar plots. Which question can you answer with
#  the first one? Which question can you answer with the second one?

# Answer: The first one shows you what percent of the penguins at each location
# are which breed. The second shows you the distribution of penguin species
# at each location.
#
# Code:

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")

ggplot(penguins, aes(x = species, fill = island)) +
  geom_bar(position = "fill")

# Section 1.6.1 ---
#
# Exercise 1 ----
# Run the following lines of code. Which of the two plots is saved as mpg-plot.png? Why?

ggplot(mpg, aes(x = class)) +
  geom_bar()
ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point()
ggsave("mpg-plot.png")

# Answer: The second, bc ggsave only saves the most recent plot in the file.
#
# Code: None.

# Exercise 2 ----
# What do you need to change in the code above to save the plot as a PDF instead 
# of a PNG? How could you find out what types of image files would work in ggsave()?

# Answer: You would do "mpg-plot.pdf instead of png. You can find what type of
# image files would work by looking at the documentation for the device
# argument within ggsave.
#
# Code: None.