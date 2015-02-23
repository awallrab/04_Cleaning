## 03_Cleaning/CourseProject/run_analysis.R
library(plyr)
setwd("./UCI HAR Dataset")

## Merge the training and the test sets to create one data set.
# First read the metadata
activity_labels <- read.table(file="activity_labels.txt")
features <- read.table(file="features.txt")

# Then read the "train" files
train_x <- read.table(file="train/X_train.txt")
train_y <- read.table(file="train/y_train.txt")
train_subject <- read.table(file="train/subject_train.txt")

# Read the "test" files
test_x <- read.table(file="test/X_test.txt")
test_y <- read.table(file="test/y_test.txt")
test_subject <- read.table(file="test/subject_test.txt")

# Merge train and test
x <- rbind(train_x, test_x)
y <- rbind(train_y, test_y)
subject <- rbind(train_subject, test_subject)

## Appropriately labels the data set with descriptive variable names. 
# Rename the columns
names(x) <- features[,2]
names(y) <- "Activity"
names(subject) <- "Subject"

# Create full data set by combining all columns
data <- cbind(x, y, subject)

## Extract only the measurements on the mean and standard deviation for each measurement. 
matches <- grep("Activity|Subject|mean|std", colnames(data))
data <- data[, matches]

## From the data set in step 4, create a second, independent tidy data set
## with the average of each variable for each activity and each subject.
tidy_data <- ddply(data, .(Activity,Subject), colMeans)

## Use descriptive activity names to name the activities in the data set
tidy_data$Activity <- as.factor(tidy_data$Activity)
levels(tidy_data$Activity) <- activity_labels[,2]

# Write the result file
setwd("..")
write.table(data, file="tidy.txt", row.names=FALSE)
