# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 9.2.1 Exercises
# Source: https://r4ds.hadley.nz/layers.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 9.2.1 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# 9.2.1: 1-4

# Exercise placeholders below:
#
# Exercise 1 ----
# Create a scatterplot of hwy vs. displ where the points are pink filled in triangles.

#
# Your code below:
ggplot(mpg, aes(x=hwy,y=displ)) +
          geom_point(color="pink", shape=17)
#
# Exercise 2 ---- 
# Why did the following code not result in a plot with blue points?

#
# Your code below:
    ggplot(mpg) + 
          geom_point(aes(x = displ, y = hwy, color = "blue")) #Color should be set outside of the aesthetic mapping.


# Exercise 3 ---- 
# What does the stroke aesthetic do? What shapes does it work with? (Hint: use ?geom_point)
#
# Your code below:
  # Stroke changes width of border
          
          ggplot(mpg, aes(x=hwy,y=displ)) +
            geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5) 


# Exercise 4 ---- 
# What happens if you map an aesthetic to something other than a variable name, like aes(color = displ < 5)? 
# Note, you’ll also need to specify x and y.

# Your code below:
  # Creates logical true/false if display is less than 5 or not
          
          ggplot(mpg, aes(x = hwy, y = displ, color = displ < 5)) + 
            geom_point()