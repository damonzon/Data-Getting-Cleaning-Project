###README: Getting and Cleaning Data - Project

### Introduction
The purpose of this project is to acquire and demonstrate an ability to collect, work with, and clean a data set.

###Raw Data Source
The data source is the  **Human Activity Recognition Using Smartphones Data Set** (UCI HAR DataSet) donated on December 10, 2012 by the University of Genoa (Università degli Studi di Genova) to the University of California, Irvine Machine Language Repository. 

Click here for a full [Data Set Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### The Assignment
####First
* Download the data set at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Create one R script called **run_analysis.R** that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Finally creates an independent tidy data file **tidy_data.txt** with the average of each variable for each activity and each subject.

###Then
* Create a **CodeBook.md** describing the variables.
* Create a **README.md** describing how the script works.
* Submit 4 files to a Github repository: **run_analysis.R**, **tidy_data.txt**, **CodeBook.md**, and **README.md**.

### Description of downloaded, unzipped data files
Contains data from the accelerometers of the Samsung Galaxy S Smartphones in a **UCI HAR Dataset directory in the R working directory.

####UCI HAR Dataset directory contains:
* activity_labels.txt: Descriptive lalbels for each activity
* features.txt:       List of 561 features
* features_info.txt:  Description of features selected for this database from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
* README.txt:  Description of the study
* train directory
* test directiry

####train directory contains:
* X_train.txt: All measurement data
* y-train.txt: Activity code each observation
* subject_train.txt: Code for each measurement for each participant
* Inertial Signals directory: Contains 9 data files

####test directory contains:
* X_test.txt: All measurement data
* y-test.txt: Activity code each observation
* subject_test.txt: Code for each measurement for each participant
* Inertial Signals directory: Contains 9 data files

####Running the program:  run_analysis.R
* Explanatory comments are written for every R command
* The program assumes the UCI HAR Dataset directory and its contents are already in the R working directory
* Identical manipulations are performed on the **train** and **test** datasets
* They are merged into one dataframe
* "mean" and"std" variables are selected and their means by subjects and activities are calculated
* Finish by writing a data file to thr R working directory  **tidy_data.txt** including the command **row.name=FALSE**.

