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
pre_mulch <- read.csv(file="pre_mulch_normality.csv")
post_mulch <- read.csv(file="post_mulch_normality.csv")
pilot <- read.csv(file="pilot.csv")

#check assumption of normality
shapiro.test(pre_mulch$LeadConc)
shapiro.test(post_mulch$LeadConc)
shapiro.test(pilot$LeadConc)

#data are NOT normally distributed, so non-parametric test
#is required. Wilcoxon Signed Rank Test is n-p equivalent
#of paired t-test
wilcox.test(LeadConc ~ Timepoint, data = average_diff, paired = TRUE)
wilcox.test(LeadConc ~ Time, data = pilot, paired = TRUE)
