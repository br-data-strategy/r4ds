# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 1.6.1 Exercises
# Source: https://r4ds.hadley.nz/data-visualize.html#exercises-3
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 1.6.1 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 1 ----
# Run the following lines of code. Which of the two plots is saved as mpg-plot.png? Why?
#
# Your code below:

ggplot(mpg, aes(x = class)) +
geom_bar()

ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point()
ggsave("mpg-plot.png")

# the plot most recently created will be saved 

# Exercise 2 ----
# What do you need to change in the code above to save the plot as a PDF instead of a PNG? 
# How could you find out what types of image files would work in ggsave()?
#
# Your code below:
# to save as pdf: change file type to pdf instead of png
# to find out what types of images would work: search for ggsave() in help tab
# 