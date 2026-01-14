# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 11.6.1 Exercises
# Source: https://r4ds.hadley.nz/communication.html#exercises-4
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 11.6.1: 1-2 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:



# Exercise 1 ----
# What happens if you omit the parentheses in the following plot layout. Can you explain why this happens?

p1 <- ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  labs(title = "Plot 1")
p2 <- ggplot(mpg, aes(x = drv, y = hwy)) + 
  geom_boxplot() + 
  labs(title = "Plot 2")
p3 <- ggplot(mpg, aes(x = cty, y = hwy)) + 
  geom_point() + 
  labs(title = "Plot 3")

(p1 | p2) / p3
#
# Your code below:

(p1 | p2) / p3 # plot 1 is top left, plot 2 is top right, plot 3 is bottom. the | places p1 and p2 next to each other. / moves p3 underneath p1 and p2

p1 | p2 / p3 # plot one is on left, plot 2 is top right, plot 3 is bottom right. The | still puts p1 next to p2, but without the parentheses, p3 is only below p2




# Exercise 2 ----
# # Using the three plots from the previous exercise, recreate the following patchwork.
#
# Your code below:

p1 / (p2 | p3) + 
  plot_annotation(tag_levels = 'A', tag_prefix = 'Fig. ')