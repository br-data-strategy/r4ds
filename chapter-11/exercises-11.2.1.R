# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 11.2.1 Exercises
# Source: https://r4ds.hadley.nz/communication.html#exercises
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 11.2.1: 1-2 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:




# Exercise 1 ----
# Create one plot on the fuel economy data with customized title, subtitle, caption, x, y, and color labels
#
# Your code below:

ggplot(mpg, aes(x = displ, y = hwy)) +
            geom_point(aes(color = class)) +
            geom_smooth(se = FALSE) +
            labs(
              x = "Engine displacement (L)",
              y = "Highway fuel economy (mpg)",
              color = "Car type",
              title = "Breaking news: big engine = bad fuel efficiency",
              subtitle = "Two seaters (sports cars) are an exception because of their light weight",
              caption = "Data from fueleconomy.gov")




# Exercise 2 ----
# Recreate the following plot using the fuel economy data. Note that both the colors and shapes of points vary by type of drive train.
#
# Your code below:
        ggplot(mpg, aes(x=cty, y=hwy)) +
          geom_point(aes(color=drv, shape = drv)) +
          labs(
            x= "City MPG",
            y = "Highway MPG",
            color = "Type of drive train",
            shape = "Type of drive train"
          )
