# This script reads and wrangles data to prepare it for analysis.
# Zoe Scott
# 2023-09-05

#Load Packages -----
#load libraries at top of code
library(readr)
library(lme4)
library(dplyr)

#use code to get working directory
getwd()

##printed in console 
#[1] "/Users/zoescott/Desktop/Fall 2023_R_Reproducibility_Course/UA_R_Reproducibility_Workshop"

#Read in data -----
## Read the csv file ----
#read in "gapminder_data.csv"
#write "data " then press tab to autofill 
read.csv("data/gapminder_data.csv")

#save data to global environemnt
gapminder <- read.csv("data/gapminder_data.csv")

#show head and structure of data
head(gapminder)
str(gapminder)

#output in console


# Section Label -----------------------------------------------------------

# Wrangle Data ------------------------------------------------------------
# "filter" is a function of the package dplyr

#create df with only data from the 1980s
# R does not allow object names to start with a number
gap_1980s <- filter(gapminder, year>= 1980, year <1990)

#create a new df only including data with very large populations
gap_big <- filter(gapminder, pop > 1000000)


# Write data --------------------------------------------------------------
#write data/save dataset and save it in the data_clean folder
write_csv(gap_1980s, "data_clean/gapminder_1980s.csv")

