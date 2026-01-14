# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 9.4.1 Exercises
# Source: https://r4ds.hadley.nz/layers.html#exercises-2
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 9.4.1: 1-5 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:



# Exercise 1 ----
# What happens if you facet on a continuous variable?
#
# Your code below:
# its treated as a categorical value and there is a facet for each unique value

ggplot(mpg, aes(x = cty, y = hwy)) + 
      geom_point() + 
      facet_wrap(~displ)


# Exercise 2 ----
# What do the empty cells in the plot above with facet_grid(drv ~ cyl) mean? 
# Run the following code. How do they relate to the resulting plot?

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  facet_grid(drv ~ cyl)

ggplot(mpg) + 
  geom_point(aes(x = drv, y = cyl))

# Your code below: 
# there are sectors where the variables do not overlap


# Exercise 3 ----
# What plots does the following code make? What does . do?

ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

# Your code below:
# it makes long boxes, not a grid or wrap



# Exercise 4 ----
# Take the first faceted plot in this section:

ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy)) + 
  facet_wrap(~ cyl, nrow = 2)

# What are the advantages to using faceting instead of the color aesthetic? 
# What are the disadvantages? How might the balance change if you had a larger dataset?

# Your code below:
# Advantages over color aesthetic: 
    # you dont have to worry about the dots overlapping (especially when one of them does not have a lot of points)
    # you can see the individual trends better, 
# What are the disadvantages? 
    # its harder to see the overall trend of them combined
    # of there aren't a lot of points for one of them (like the top right), then that facet is a little meaningless
# How might the balance change if you had a larger dataset?
    # larger data set would definitely benefit from faceting so the points dont overlap


# Exercise 5 ----
# Read ?facet_wrap. What does nrow do? What does ncol do? 
# What other options control the layout of the individual panels? Why doesn’t facet_grid() have nrow and ncol arguments?

# Your code below:
# nrow controls the number of rows
# ncol controls the number of columns

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  facet_wrap(~cyl,
             nrow = 4)


