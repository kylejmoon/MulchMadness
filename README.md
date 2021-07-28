# MulchMadness

# McNemar test
# Raw_data.csv presents 6 data points from all 27 houses with pre- and post-mulching samples
# Soil lead concentration was collapsed into categorical variables in hazard_categorical_data.csv, which uses EPA hazard thresholds
    # If house had ≥1 sample ≥400 ppm Pb, it was considered 'hazardous'
    # If house had no samples ≥ 400 ppm Pb, 'no intervention required' was assigned 
# To assess change in hazard threshold (i.e. if home with hazardous soil lead concentration was no longer hazardous after mulching), use Hazard_matrix.csv

# Code was written with R Statistical Software, which is open source and can be downloaded from https://www.r-project.org/
    R Core Team (2020). R: A language and environment
     for statistical computing. R Foundation for
     Statistical Computing, Vienna, Austria. URL
     https://www.R-project.org/.
     
    # Code makes use of all three data files, all of which can be downloaded from the McNemar branch of the Mulch Madness repository
