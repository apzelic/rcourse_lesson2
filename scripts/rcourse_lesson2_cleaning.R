library(dplyr)

## READ IN DATA ####

load(file = "data/babynames.R")
data <- babynames

## CLEAN DATA ####
data_clean= data %>%
    filter(name == "Page")
head(data_clean)

data_clean = data %>%
    filter(name == "Page") %>%
    mutate(name = factor(name)) %>%
    filter(year > 1900) %>%
    filter(year <= 2000)

min(data_clean$year)
max(data_clean$year)