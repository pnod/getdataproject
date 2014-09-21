README
========================================================
This is for the course project for "Getting and Cleaning Data".  
  
There are only two other files in this repo:  
1. "run_analysis.R" is the R script for all of the data manipulation  
2. "Codebook.md" is the codebook describing all of the variables in the final tidy dataset
  
The R script contains comments explaining the code, but here is a walk-through of the process:  
1. The zipped file was downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and unzipped in the working directory  
2. All of the data in the .txt files were read into R.  
3. The data were patched together into a full dataset with 10,299 observations and 563 variables.  
4. A subset of the data was drawn, using only the variables representing means and standard deviations of measurements. This produced a dataset of 10,299 observations and 68 variables.  
5. The integer values in the "Activity" variable were replaced with text descriptions according to this mapping: (1) Walking, (2) Walking upstairs, (3) Walking downstairs, (4) Sitting, (5) Standing, (6) Laying  
6. The variable names were cleaned up a bit.  
7. The final tidy dataset was created by taking the mean for each combination of subject and activity. Since there were 30 subjects and 6 activities, the tidy dataset has 180 observations across 68 variables (66 of which are measurement variables; the two remaining variables were for the subject and activity).  
8. This tidy dataset was saved to a .txt file.  