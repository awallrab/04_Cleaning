# Getting and Cleaning Data 

## Source of the deta
The source data set represents accelerometer data and was taken from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Source files
The unzipped data contains trainings and test sets in individual files. For the course project the following files were used: 
- features.txt: list of features
- activity_labels.txt: activity names
- train/X_train.txt: training set
- train/y_train.txt: training labels
- train/subject_train.txt: subject performing the activity
- test/X_test.txt: test set
- test/y_test.txt: test labels
- test/subject_test.txt: subject performing the activity

## Variables in the tidy data set

The activity labels are
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

The subjects are identified by numbers (range 1 to 30).

The dollowing measurements are available
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

For each measurement the mean & stanbdard deviation were calculated per activity and subject.

For details on the individual measurements, please see the original codebook in the source data zip file (README.txt & features_info.txt).
