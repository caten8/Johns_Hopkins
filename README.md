==================================================================
Tidy Data Course Project
==================================================================
The run_analysis.R script merges multiple data files, extracts only 
the measurements on mean and standard deviation, improves the 
readability of variable names, substitutes activity names for factors, 
and creates a tidy dataset. From there, it generates a tidy dataset 
of averages for each observation. The resulting file "tidyaverage.txt" 
meets the following principles of tidy data:
- Each variable measured is in one column
- Each different observation of that variable is in a different row
==================================================================
There is one R script. One script runs the analysis, makes all the
changes, and generates a tidy dataframe, then generates a tidy data-
frame with averages. 
==================================================================
Note: 
=====
Before running the script you must first install and/or activate the 
following R packages: 
- data.table
- dplyr
- tidyr
==================================================================
A PNG screengrab called "tidyaverage_screenshot" is included to help
confirm the data is tidy and is ready to be used for analysis. This 
is a partial view of the first 20 rows and the first six columns.
==================================================================

The dataset includes the following files:

- 'CodeBook.md': Describes the variables, data, and transformations
  performed to clean up the data.

- 'data' directory: Includes the downloaded zipped file and its 
  extracted content.

- 'README.md'

- 'run_analysis.R': Merges the training and the test sets to create 
one data set, extracts only the measurements on the mean and standard 
deviation for each measurement, uses descriptive ACTIVITY names to 
name the activities in the data set, appropriately labels the data 
set with descriptive variable names for MEASUREMENTS, and from the 
data set in step 4, creates a second, independent tidy data set with 
the average of each variable for each activity and each subject.

- 'tidy.txt': Gives an unformatted table of merged data after all
  manipulations conclude.

- 'tidyaverage_screenshot.png': Provides a screenshot of the output
  from 'average.df' as a quick check of the file structure.

- 'tidyaverage.txt': The generated file that was uploaded to GitHub.

Code Book:
==========
Consult the codebook for an explanation of variables.