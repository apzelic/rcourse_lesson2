## READ IN DATA ####
source("scripts/rcourse_lesson2_cleaning.R")

## LOAD PACKAGES ####
# [none currently needed]

## ORGANIZE DATA for statistical calculations ####
data_stats = data_clean

## BUILD MODEL - PROPORTION OF 'PAGE'S BY YEAR (CONTINUOUS PREDICTOR) ####
year.lm <- lm(prop_log10 ~ year, data = data_stats)

year.lm_sum = summary(year.lm)
year.lm_sum

year.lm_resid = resid(year.lm)


## BUILD MODEL - PROPORTION OF 'PAGE'S BY SEX (CATEGORICAL PREDICTOR) ####
sex.lm = lm(prop_log10 ~ sex, data = data_stats)

sex.lm_sum = summary(sex.lm)
sex.lm_sum

sex.lm_resid = resid(sex.lm)
head(sex.lm_resid)


