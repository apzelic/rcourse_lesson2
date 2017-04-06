library(dplyr)

## READ IN DATA ####

load(file = "data/babynames.R")
data <- babynames

## CLEAN DATA ####
data_clean= data %>%
    filter(name == "Page")
head(data_clean)

data_clean = data %>%
    filter(name == "Alan") %>%
    mutate(name = factor(name)) %>%
    filter(year > 1900) %>%
    filter(year <= 2000)

data_clean = data %>%
    filter(name == "Page") %>%
    mutate(name = factor(name)) %>%
    filter(year> 1900) %>%
    filter(year <=2000) %>%
    mutate(prop_loge = log(prop)) %>%
    mutate(prop_log10 = log10(prop))
    

min(data_clean$year)
max(data_clean$year)