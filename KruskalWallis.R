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

#upload data file(s)
grid <- read.csv(file="pilot_grid_analysis.csv")
street <- read.csv(file="pilot_street.csv")

#check assumption of homogeneity of variances (required for ANOVA) with Levene test
leveneTest(Lead ~ Location, data=grid)
leveneTest(LeadConc ~ Location, data=street)

#does not meet assumptions of ANOVA (homogeneity of variance), so non-parametric 
#equivalent employed: kruskal-wallis
kruskal.test(Lead ~ Location, data=grid)
kruskal.test(LeadConc ~ Location, data=street)

#multiple comparisons test to identify *where* the differences lie
#bonferroni correction reduces prob of Type I error (rejecting true Ho)
dunnTest(Lead ~ Location, data=grid, method="bonferroni")
dunnTest(LeadConc ~ Location, data=street, method="bonferroni")
