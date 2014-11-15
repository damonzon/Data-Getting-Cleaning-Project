# Code book: Getting and Cleaning Data - Project
This is the code bbook for the **tidy_data.txt** file produced by the R prrogram: **run_analysis.R**
The source of the raw data is the Human Activity Recognition data set available from the University of California, Irvine Machine Learning Repository.
See details in the **README.md** file.
 

####There are 69 variables and 180 observations in the data frame.

#### V1:&nbsp;&nbsp; subject &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A numeric code (coerced as factor) identifying the study participants (1-30)

#### V2:&nbsp;&nbsp; activity  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A numeric code (coerced as factor) for the activiies undertaken (1-6)

#### V3:&nbsp;&nbsp; activity_label    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Labels for the 6 activities 

*  1 WALKING
*  2 WALKING_UPSTAIRS
*  3 WALKING_DOWNSTAIRS
*  4 SITTING
*  5 STANDING
*  6 LAYING

#### Variables 4-69 represent the MEAN  across all observations for a particular measurement, for a particular activity, for a particular person.
####(For example, the tBodyAcc.mean...X, for WALKING for subjecct number 1)

#### V4:&nbsp; tBodyAcc.mean...X

#### V5:&nbsp; tBodyAcc.mean...Y

#### V6:&nbsp; tBodyAcc.mean...Z

#### V7:&nbsp; tBodyAcc.std...X

#### V8:&nbsp; tBodyAcc.std...Y

#### V9:&nbsp; tBodyAcc.std...Z

#### V10:&nbsp; tGravityAcc.mean...X

#### V11:&nbsp; tGravityAcc.mean...Y

#### V12:&nbsp;tGravityAcc.mean...Z

#### V13:&nbsp;tGravityAcc.std...X

#### V14:&nbsp;tGravityAcc.std...Y

#### V15:&nbsp;tGravityAcc.std...Z

#### V16:&nbsp;tBodyAccJerk.mean...X

#### V17:&nbsp;tBodyAccJerk.mean...Y

#### V18:&nbsp;tBodyAccJerk.mean...Z

#### V19:&nbsp;tBodyAccJerk.std...X

#### V20:&nbsp;tBodyAccJerk.std...Y

#### V11:&nbsp;tBodyAccJerk.std...Z

#### V22:&nbsp;tBodyGyro.mean...X

#### V23:&nbsp;tBodyGyro.mean...Y

#### V24:&nbsp;tBodyGyro.mean...Z

#### V25:&nbsp;tBodyGyro.std...X

#### V26:&nbsp;tBodyGyro.std...Y

#### V27:&nbsp;tBodyGyro.std...Z

#### V28:&nbsp;tBodyGyroJerk.mean...X

#### V29:&nbsp;tBodyGyroJerk.mean...Y

#### V30:&nbsp;tBodyGyroJerk.mean...Z

#### V31:&nbsp;tBodyGyroJerk.std...X

#### V32:&nbsp;tBodyGyroJerk.std...Y

#### V33:&nbsp;tBodyGyroJerk.std...Z

#### V34:&nbsp;tBodyAccMag.mean..

#### V35:&nbsp;tBodyAccMag.std..

#### V36:&nbsp;tGravityAccMag.mean..

#### V37:&nbsp;tGravityAccMag.std..

#### V38:&nbsp;tBodyAccJerkMag.mean..

#### V39:&nbsp;tBodyAccJerkMag.std..

#### V40:&nbsp;tBodyGyroMag.mean..

#### V41:&nbsp;tBodyGyroMag.std..

#### V42:&nbsp;tBodyGyroJerkMag.mean..

#### V43:&nbsp;tBodyGyroJerkMag.std..

#### V44:&nbsp;fBodyAcc.mean...X

#### V45:&nbsp;fBodyAcc.mean...Y

#### V46:&nbsp;fBodyAcc.mean...Z

#### V47:&nbsp;BodyAcc.std...X

#### V48:&nbsp;fBodyAcc.std...Y

#### V49:&nbsp;fBodyAcc.std...Z

#### V50:&nbsp;fBodyAccJerk.mean...X

#### V51:&nbsp;fBodyAccJerk.mean...Y

#### V52:&nbsp;fBodyAccJerk.mean...Z

#### V53:&nbsp;fBodyAccJerk.std...X

#### V54:&nbsp;fBodyAccJerk.std...Y

#### V55:&nbsp;fBodyAccJerk.std...Z

#### V56:&nbsp;fBodyGyro.mean...X

#### V57:&nbsp;fBodyGyro.mean...Y

#### V58:&nbsp;fBodyGyro.mean...Z

#### V59:&nbsp;fBodyGyro.std...X

#### V60:&nbsp;fBodyGyro.std...Y

#### V61:&nbsp;fBodyGyro.std...Z

#### V62:&nbsp;fBodyAccMag.mean..

#### V63:&nbsp;fBodyAccMag.std..

#### V64:&nbsp;fBodyBodyAccJerkMag.mean..

#### V65:&nbsp;fBodyBodyAccJerkMag.std..

#### V66:&nbsp;fBodyBodyGyroMag.mean..

#### V67:&nbsp;fBodyBodyGyroMag.std..

#### V68:&nbsp;fBodyBodyGyroJerkMag.mean..

#### V69:&nbsp;fBodyBodyGyroJerkMag.std..

