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

#upload data file
neighborhood_comparison <- read.csv(file="neighborhood_comparison.csv")

#check assumption of normality
shapiro.test(neighborhood_comparison$LeadConc)

#data are not normally distributed (assumption of independent t-test), so 
#non-parametric Mann-Whitney U test used
wilcox.test(LeadConc ~ Group, data = neighborhood_comparison, paired = FALSE)

