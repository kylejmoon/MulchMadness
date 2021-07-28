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
raw_data <- read.csv(file="raw_data.csv")
hazard_category <- read.csv(file="hazard_categorical_data.csv")
hazard_change <- read.csv(file="Hazard_matrix.csv")

#View raw continuous data
raw_data

#Convert from continuous to categorical data, using EPA hazard thresholds
#If house has no sample ≥400ppm Pb, no intervention required
#If house has ≥1 sample ≥400ppm Pb, constitutes hazard
hazard_category_table <- table(hazard_category$HazardDescrip, hazard_category$Time)
hazard_category_table

#view table of change in hazard after mulching
hazard_change_table <- table(hazard_change$HazardChange)
hazard_change_table

#plug in output to matrix and create 2x2 contingency table to assess change in hazard 
matrix_data <- matrix(c(4,2,18,3), 
                      nrow=2,
                      dimnames = list("Before Mulching" = c("Hazard", "No Hazard"),
                                      "After Mulching" =c("Hazard", "No Hazard")))
matrix_data

#use McNemar's test to assess statistical significance
#null hypothesis os McNemar's test is marginal homogeneity 
mcnemar.test(matrix_data)