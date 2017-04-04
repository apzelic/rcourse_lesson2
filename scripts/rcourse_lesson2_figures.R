## READ IN DATA ####
source("scripts/rcourse_lesson2_cleaning.R")

## LOAD PACKAGES ####
library(ggplot2)

## ORGANIZE DATA ####
data_figs = data_clean

## MAKE FIGURES ####
# Histogram of dependent variable (proportion of 'Page's)
name.plot = ggplot(data_figs, aes(x = prop)) +
    geom_histogram()

# pdf("figures/name.pdf")
name.plot
# dev.off()

data_clean <- data %>%
    filter(name == "Page") %>%
    mutate(name = factor(name)) %>%
    filter(year>1900) %>%
    filter(year<=2000) %>%
    mutate(prop_loge = log(prop)) %>%
    mutate(prop_log10 = log10(prop))

name_loge.plot = ggplot(data_clean, aes(x=prop_loge)) + 
    geom_histogram(bins=50)

name_log10.plot = ggplot(data_clean, aes(x=prop_log10)) + 
    geom_histogram(bins=50)

year.plot<- ggplot(data_clean, aes(x=year, y = prop_log10)) + 
    geom_point() +
    geom_smooth(method = "lm")

sex.plot <- ggplot(data_clean, aes(x=sex, y = prop_log10)) + 
    geom_boxplot()

data_figs = data_clean %>%
    mutate(sex = factor(sex, levels=c("F", "M"), labels=c("female", "male")))

sex.plot <- ggplot(data_figs, aes(x=sex, y = prop_log10)) + 
    geom_boxplot()

