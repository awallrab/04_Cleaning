# Getting and Cleaning Data - Course Project
This repository contains the script "run_analysis.R" as required by the course project.  It expects the unzipped input data in the directory "UCI HAR Dataset" and produces a file "tidy.txt" as output.
## Description
The script performs the following steps:
- Read the metadata information (column names & activities)
- Read the "train" & "test" files
- Merge the rows of the files
- Rename the columns
- Merge the colums into a single data frame
- Label the data set with descriptive variable names
- Extract mean & standard deviation
- Creates a tidy data set with activity names
- Saves the tidy data set to file called "tidy.txt"
