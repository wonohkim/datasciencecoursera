# Coursera - Getting Analysis and Cleaning Data
# Project 2 

# create one R script called run_analysis.R. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation 
#     for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set
#     with the average of each variable for each activity and each subject.

# Load data
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")

X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")

features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

# Merge train and test data
len <- length(X_train)
train <- X_train
train[,len+1] <- y_train
train[,len+2] <- subject_train

len <- length(X_test)
test <- X_test
test[,len+1] <- y_test
test[,len+2] <- subject_test

# 1. Merges the training and the test sets to create one data set.
mergedData = rbind(train,test)

# 2. Extracts only the measurements on the mean and standard deviation 
#     for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.

# rename features as describptive activity names
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])
features[,2] = gsub('[-,]', '', features[,2])

# grep mean and std
content <- grep(".*Mean.*|.*Std.*", features[,2])

# reduce features of the desired content (mean,std)
features <- features[content,]

# add subject and activity cols
content <- c(content, len+1, len+2)

# select only contenet data from merged data
mergedData <- mergedData[,content]

# add names (from features)
colnames(mergedData) <- c(features$V2, "activity", "subject")

# 5. From the data set in step 4, creates a second, independent tidy data set
#     with the average of each variable for each activity and each subject.

current_activity = 1
for (current_activity_label in activity_labels$V2) {
  mergedData$activity <- gsub(current_activity, current_activity_label, mergedData$activity)
  current_activity <- current_activity + 1
}

mergedData$activity <- as.factor(mergedData$activity)
mergedData$subject <- as.factor(mergedData$subject)

tidyData = aggregate(mergedData, by=list(activity=mergedData$activity, subject=mergedData$subject), mean)

# write data into file
write.table(tidyData, "tidy_data.txt", row.name=FALSE)
