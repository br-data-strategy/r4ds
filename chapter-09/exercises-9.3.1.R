# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 9.3.1 Exercises
# Source: https://r4ds.hadley.nz/layers.html#exercises-1
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 9.3.1: 1-3 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:

# Exercise 1 ----
# What geom would you use to draw a line chart? A boxplot? A histogram? An area chart?

# Your code below:
# line chart -- geom_line()
# boxplot -- geom_boxplot()
# histogram -- geom_histogram()
# area chart -- geom_area()



# Exercise 2 ----
# Earlier in this chapter we used show.legend without explaining it:
# 
# ggplot(mpg, aes(x = displ, y = hwy)) +
#   geom_smooth(aes(color = drv), show.legend = FALSE)
# 
# What does show.legend = FALSE do here? What happens if you remove it? Why do you think we used it earlier?

# Your code below:

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth(aes(color = drv), show.legend = FALSE) # does not show legend

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth(aes(color = drv)) # shows legend


# Exercise 3 ----
# What does the se argument to geom_smooth() do?

# Your code below:
# Displays confidence interval around smooth
