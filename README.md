# MulchMadness

### Wilcoxon signed-rank test
##### Data were not normally distributed (tested with Shapiro-Wilk test), so Wilcoxon signed-rank test was used to compare  soil lead concentration before and after mulching
##### Neighborhood data and pilot study (renovated community-based organization) referenced in the script (Wilcoxon) are accessible here
    

### McNemar test
##### Raw_data.csv presents 6 data points from all 27 houses with pre- and post-mulching samples
##### Soil lead concentration was collapsed into categorical variables in hazard_categorical_data.csv, which uses EPA hazard thresholds
    # If house had ≥1 sample ≥400 ppm Pb, it was considered 'hazardous'
    # If house had no samples ≥ 400 ppm Pb, 'no intervention required' was assigned 
##### To assess change in hazard threshold (i.e. if home with hazardous soil lead concentration was no longer hazardous after mulching), use Hazard_matrix.csv
#### All three data files included in script (McNemar) are accessible here: hazard_categorical, hazard_matrix, raw_data

### Kruskal-Wallis test
##### For pilot study data, Kruskal-Wallis test was used to assess (i) differences in lead concentration as a function of distance from the building foundation at the recently renovated community-based organization [grid analysis] and (ii) differences in lead concentration among community-based organization and four neighboring homes
    Dunn's test with Bonferroni correction was used for multiple comparisons 
    Kruskal-Wallis test was used after Levene test indicated homogeneity of variance violated (assumption of ANOVA)
##### Both data files included in script (KruskalWallis) are accessible here: pilot_grid_analysis, pilot_street


### Code was written with R Statistical Software, which is open source and can be downloaded from https://www.r-project.org/
    R Core Team (2020). R: A language and environment
     for statistical computing. R Foundation for
     Statistical Computing, Vienna, Austria. URL
     https://www.R-project.org/.
     

