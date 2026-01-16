# BakerRipley Data Science Training Program
# R for Data Science (2e) – Section 14.3.4 Exercises
# Source: https://r4ds.hadley.nz/strings.html#exercises-1
# NOTE: For full exercise text, see the linked R4DS chapter above.
#
# --- Exercises from R for Data Science (2e) — Section 14.3.4: 2-3 ---
# Replace each '# (Exercise text)' line with the full exercise text from https://r4ds.hadley.nz
#
# Exercise placeholders below:
#
# Exercise 2 ----
# What’s the difference between paste() and paste0()? How can you recreate the equivalent of paste() with str_c()?
#
# Your code below:
# the argument sep by default is ” ” (paste) and “” (paste0). 
# So paste0() is faster than paste() at concatenating strings becasue you don't need sep argument
# 

str_c("x", "y", "z")
paste("x", "y", "z", sep="")

# Exercise 3 ----
# Convert the following expressions from str_c() to str_glue() or vice versa

str_c("The price of ", food, " is ", price)
str_glue("I'm {age} years old and live in {country}")
str_c("\\section{", title, "}")


# Your code below:

df <- tibble(food = c("Burger", "Pizza", "Hot dog"),
             price = c(5,10,15),
             age = c(55, 60, 30),
             country = c("US","UK","Mexico"),
             title = c("x","y","z")
)

df |> mutate(x = str_c("The price of ", food, " is ", price))
df |> mutate(x = str_glue("The price of {food} is {price}"))



df |> mutate(y = str_glue("I'm {age} years old and live in {country}"))
df |> mutate(y = str_c("I'm ", age, " years old and live in ", country))


df |> mutate(z = str_c("\\section{", title, "}"))
df |> mutate(z = str_glue("\\\\section{{{title}}}")

             