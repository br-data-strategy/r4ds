# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 9.6.1 Exercises
# Source: https://r4ds.hadley.nz/layers.html#exercises-4
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 9.6.1: 1-3 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#




# Exercise 1 ----
# What is the problem with the following plot? How could you improve it?

ggplot(mpg, aes(x = cty, y = hwy)) + 
  geom_point()
#
# Your code below:
# too uniform and the points are hiding behind each other. Added jitter. 

ggplot(mpg, aes(x = cty, y = hwy)) + 
  geom_point(position = "jitter")




# Exercise 2 ----
#What, if anything, is the difference between the two plots? Why?

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(position = "identity")
#
# Your code below:

 ggplot(mpg, aes(x = displ, y = hwy)) +
            geom_point()
          
          ggplot(mpg, aes(x = displ, y = hwy)) +
            geom_point(position = "identity") #this one places the points where they fall, but this doesn't do much for scatterplot



# Exercise 3 ----
# What parameters to geom_jitter() control the amount of jittering?
#
# Your code below:
# width and height control the amount of jitter. if omitted, the default is 40% 
