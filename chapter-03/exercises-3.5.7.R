# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 3.5.7 Exercises
# Source: https://r4ds.hadley.nz/data-transform.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 3.5.7 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise 1 ----
# Which carrier has the worst average delays? Challenge: can you disentangle the
# effects of bad airports vs. bad carriers? Why/why not? (Hint: think about 
# flights |> group_by(carrier, dest) |> summarize(n()))
#
# Answer: Frontier has the worst delays.
#
# Your code below:

flights |>
  group_by(carrier) |>
  summarize(avg_dep_delay = mean(dep_delay, na.rm = TRUE)) |>
  arrange(desc(avg_dep_delay))

# Exercise 2 ----
# Find the flights that are most delayed upon departure from each destination.
# 
# Your code below:

flights |> 
  group_by(dest) |> 
  arrange(dest, desc(dep_delay)) |>
  slice_head(n = 5) |>
  relocate(dest, dep_delay)

# Exercise 3 ----
# How do delays vary over the course of the day? Illustrate your answer with a plot.
#
#Answer: The hourly average departure delay increases until roughly 7pm. 
# It then decreases again but doesn't get as low as the morning.

# Your code below:

flights |>
  group_by(hour) |>
  summarize(avg_dep_delay = mean(dep_delay, na.rm = TRUE)) |>
  ggplot(aes(x = hour, y = avg_dep_delay)) + 
  geom_smooth()
