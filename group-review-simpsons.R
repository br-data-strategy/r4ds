# BakerRipley Data Science Training Program
# R for Data Science (2e) – Group Exercise 1 - The Simpsons
# Source: https://r4ds.hadley.nz/data-visualize.html#exercises
# Date: 11/25/25
#
## Option 1: tidytuesdayR package 

install.packages("tidytuesdayR")

tuesdata <- tidytuesdayR::tt_load(2025, week = 5)

simpsons_characters <- tuesdata$simpsons_characters
simpsons_episodes <- tuesdata$simpsons_episodes
simpsons_locations <- tuesdata$simpsons_locations
simpsons_script_lines <- tuesdata$simpsons_script_lines

# packages
install.packages("httr")
install.packages("jsonlite")
install.packages("")
library(httr)
library(tidyverse)
library(jsonlite)
library(withr)

# Define the metadata URL and fetch it
metadata_url <- "www.kaggle.com/datasets/prashant111/the-simpsons-dataset/croissant/download"
response <- httr::GET(metadata_url)

# Ensure the request succeeded
if (httr::http_status(response)$category != "Success") {
  stop("Failed to fetch metadata.")
}

# Parse the metadata
metadata <- httr::content(response, as = "parsed", type = "application/json")

# Locate the ZIP file URL
distribution <- metadata$distribution
zip_url <- NULL

for (file in distribution) {
  if (file$encodingFormat == "application/zip") {
    zip_url <- file$contentUrl
    break
  }
}

if (is.null(zip_url)) {
  stop("No ZIP file URL found in the metadata.")
}

# Download the ZIP file. We'll use the withr package to make sure the downloaded
# files get cleaned up when we're done.
temp_file <- withr::local_tempfile(fileext = ".zip") 
utils::download.file(zip_url, temp_file, mode = "wb")

# Unzip and read the CSV
unzip_dir <- withr::local_tempdir()
utils::unzip(temp_file, exdir = unzip_dir)

# Locate the CSV file within the extracted contents
csv_file <- list.files(unzip_dir, pattern = "\\.csv$", full.names = TRUE)

if (length(csv_file) == 0) {
  stop("No CSV file found in the unzipped contents.")
}

# Read the CSV into a dataframe
simpsons_characters <- read_csv(csv_file[1])
simpsons_episodes <- read_csv(csv_file[2])
simpsons_locations <- read_csv(csv_file[3])
simpsons_script_lines <- read_csv(csv_file[4])

# filter episodes to include 2010+
simpsons_episodes <- simpsons_episodes |> 
  dplyr::filter(original_air_year >= 2010)

# filter script lines to only include lines for these episodes
simpsons_script_lines <- simpsons_script_lines |> 
  dplyr::semi_join(simpsons_episodes, by = c("episode_id" = "id"))

# make two visualizations to answer the questions:
#
# 1 - What are the most frequently used locations in the series, 
# and do specific locations correspond to higher IMDb ratings for episodes?
#
# 2- Is there a relationship between the number of U.S. viewers (in millions) 
# and the IMDb ratings or votes for episodes?

glimpse(simpsons_locations)

# imdb rating by # millions US viewers

ggplot(
  data = simpsons_episodes,
  mapping = aes(x = us_viewers_in_millions, y = imdb_rating)
) +
  geom_point() + 
  geom_smooth(method = "lm")

# imdb votes by # millions US viewers

install.packages("smplot2")
library(smplot2)

ggplot(
  data = simpsons_episodes,
  mapping = aes(x = us_viewers_in_millions, y = imdb_votes)
) +
  geom_point() + 
  geom_smooth(method = "lm")

# anlysis:
# there is a positve relationship btwn # imdb votes and # million viewers, but
# not a strong, if any, relationship btwn # imdb rating and # million viewers

# examine locations

library(dplyr)
library(tidyverse)
simpsons_locations_freq <- table(simpsons_locations$name)
view(simpson_locations_freq)
simpsons_locations_freq |> 
  arrange(desc(freq)) 

view(simpson_locations_freq)

# merge datasets

simpsons_episodes_by_location <- merge(simpsons_episodes, simpsons_locations, by = "id")

ggplot(
  data = simpsons_episodes_by_location,
  mapping = aes(x = name, y = imdb_rating)
) +
  geom_point() + 
  geom_smooth(method = "lm")

# repeat but w correct dataset (locations is just a list of all the locations oops)

simpsons_script_lines_freq <- table(simpsons_script_lines$raw_location_text)
view(simpsons_script_lines_freq)

# used view to see that Simpson's home, Springfield Elementary School, and Moe's
# Tavern are the top locations

# edits data sets to be able to merge them

simpsons_episodes_renamed <- simpsons_episodes %>%
  rename(episode_id = id)
view(simpsons_episodes_renamed)

# merge datasets

simpsons_episodes_location <- merge(simpsons_episodes_renamed, 
                                    simpsons_script_lines, by = "episode_id")

ggplot(
  data = simpsons_episodes_location,
  mapping = aes(x = location_id, y = imdb_rating)
) +
  geom_point() + 
  geom_smooth(method = "lm")

