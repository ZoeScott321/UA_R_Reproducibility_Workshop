
# Load packages -----------------------------------------------------------
library(readr)
library(lme4)

# read data ---------------------------------------------------------------

gap_1980s <- read_csv("Data_clean/gapminder_1980s.csv")

# fit model ---------------------------------------------------------------


model1 <- lmer()