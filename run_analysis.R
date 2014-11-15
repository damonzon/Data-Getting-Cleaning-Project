# run_analysis.R  -- Assumes the Samsung data files are already in the working directory and thus don' t need to be downloaded

# Training Data ------------------------------------------------------------------------------

# 1 Read data
data <- read.table("./UCI HAR Dataset/train/X_train.txt")

# 2 Read features to give the columns descriptive names
features <- read.table("./UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature"))

# 3 Name data columns with features
colnames(data) <- features$feature

# 4 Read activities (1-6)
activities <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = c("activity"))

# 5 Add activity class labels column to data -- coerce the numbers from numeric to factor
data$activity <- as.factor(activities$activity)

# 6 Read activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("activity", "activity_label"))

# 7 Add activity name labels column to data (join 2 data frames together)
library(plyr) # package necessary for the join function and the ddply function
data_with_activity_labels <- join(x = data, y = activity_labels, by = "activity")

# 8 Read subjects
subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = c("subject"))

# 9 Make subject a factor
subjects$subject <- as.factor(subjects$subject)

# 10 Add subjects column to data
data2<-cbind(subjects, data_with_activity_labels)

# 11 Read features
features <- read.table("./UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature"))

# 12 Create a logical vector of variables that contain "mean" or "std" (as well as the columns added by this program)
mean_and_std_variables <- grepl("subject|activity|activity_label|mean\\(\\)|std\\(\\)", colnames(data2))

# 13 Subset data with logical vector
training_data<-data2[,mean_and_std_variables]

# Testing Data -----------------------------------------------------------------------------------
# 1 Read data
data <- read.table("./UCI HAR Dataset/test/X_test.txt")

# 2 Read features
features <- read.table("./UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature"))

# 3 Name data columns with features
colnames(data) <- features$feature

# 4 Read activities
activities <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = c("activity"))

# 5 Add activity class labels column to data
data$activity <- as.factor(activities$activity)

# 6 Read activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("activity", "activity_label"))

# 7 Add activity name labels column to data
# library(plyr)
data_with_activity_labels <- join(x = data, y = activity_labels, by = "activity")

# 8 Read subjects
subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c("subject"))

# 9 Make subject a factor
subjects$subject <- as.factor(subjects$subject)

# 10 Add subjects column to data
data2<-cbind(subjects, data_with_activity_labels)

# 11 Read features
features <- read.table("./UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature"))

# 12 Create a logical vector of variables that contain "mean" or "std" (as well as the columns added by this program)
mean_and_std_variables <- grepl("subject|activity|activity_label|mean\\(\\)|std\\(\\)", colnames(data2))

# 13 Subset data with logical vector
testing_data<-data2[,mean_and_std_variables]

# merge the 2 data sets
merged_data <-  rbind(training_data, testing_data)  

#library(plyr) don't need to load it a second time
# group all the subjects together, then group all the activities together, then calculate a mean across variables related to" "mean" and "std", then return the dataset.
# ddply function to Split data frame, and return results in a data frame.
final_data<-ddply(merged_data, .(subject, activity, activity_label), numcolwise(mean))

# write data at txt file - row.name=FALSE adds a line that names the columns V1 - V69
write.table(final_data,"tidy_data.txt", row.name=FALSE)
# The End

