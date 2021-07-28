#Set working directory


#Load packages/libraries
library(car)
library(dplyr)
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(forcats)
library(ggsignif)
library(coin)
library(FSA)

#Upload data files
hazard_change <- read.csv(file="McNemar_data.csv")

#McNemar for change in hazard 
#raw data table
change_in_hazard <- table(hazard_change$HazardDescrip, hazard_change$Time)
change_in_hazard

#contingency table
matrix_data <- matrix(c(4,2,18,3), 
                      nrow=2,
                      dimnames = list("Before Mulching" = c("Hazard", "No Hazard"),
                                      "After Mulching" =c("Hazard", "No Hazard")))
matrix_data
mcnemar.test(matrix_data)
