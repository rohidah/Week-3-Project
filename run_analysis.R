#=================================================================================================================
# PREPARATIOn STEP 1 
# Load all the needed libraries needed to manipulate data in tables format.
#=================================================================================================================

library(plyr)
library(data.table)
library(dplyr)

#=================================================================================================================
# PREPARATION STEP 2  
# Reading the data from table in the home directory
# The following codes read all the txt files into a data sets for possible data manipulation at the later stage.
#=================================================================================================================

  YTest <- read.table("UCI HAR Dataset/test/y_test.txt")
  XTest <- read.table("UCI HAR Dataset/test/x_test.txt")
  SubjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")

  YTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
  XTrain <- read.table("UCI HAR Dataset/train/x_train.txt")
  SubjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
  
  features <- read.table("UCI HAR Dataset/features.txt")
  
#================================================================================================================
# PREPARATIOn STEP 3 
#  The following codes works by 
#  1.  Attaching the variable names available from feature datasets to the 2 data sets, XTrain & XTest
#  2.  Adding 2 extra columns representing activites as well as participants to the 2 data sets, XTrain & XTest
#================================================================================================================

  colnames(XTrain) <- t(features[2])
  colnames(XTest) <- t(features[2])
 
  XTrain$activities <-YTrain[,1]
  XTrain$participants <-SubjectTrain[,1]
  XTest$activities <-YTest[,1]
  XTest$participants <- SubjectTest[,1]
  
#======================================================================================================================  
# TASK 1 - Merges the training and the test sets to crete one data set
# This codes wil row bind the 2 data sets and create a Master dataset
#======================================================================================================================  
  
   Master <-rbind(XTrain,XTest)

#======================================================================================================================
# TASK 2 - Extracts only the measurements on the mean and standard deviation for each measurement
# It creates a subset of data that consists only mean and standard deviation together with participants 
# and activities columns. The data sets is called MatrixMeanStd
#====================================================================================================================== 

  MS <-grep("mean",names(Master))
  STD <- grep("std", names(Master))
  MatrixM <- Master[MS]
  MatrixSTD <- Master[STD]
  
  MatrixMeanStd <- cbind(MatrixM,MatrixSTD)
  MatrixMeanStd$Participants <- Master$participants 
  MatrixMeanStd$activities <- Master$activities
 
#======================================================================================================================
# TASK 3 - Uses descriptive activity names to name the activities in the data set
# The following codes creates a data set called activity_labels from the activity_label.txt and merge it with 
# the MatrixmeanStd. The new data set is called MatrixMeanStd2.
# #======================================================================================================================
  
  activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, as.is=TRUE, col.names = c("ActivityID", "ActivityName"))
  activity_labels$ActivityName <- as.factor(activity_labels$ActivityName)
  MatrixMeanStd2 <- merge(activity_labels, MatrixMeanStd, by.x = "ActivityID", by.y = "activities", all=TRUE)

#======================================================================================================================  
# TASK 4 - Appropriately labels the data set with descriptive variable names
# These codes search for acronyms in the column names and replace them with approriate variable names.
#======================================================================================================================
  
  names(MatrixMeanStd2 )<-gsub("Acc", "Accelerometer", names(MatrixMeanStd2 ))
  names(MatrixMeanStd2 )<-gsub("Gyro", "Gyroscope", names(MatrixMeanStd2 ))
  names(MatrixMeanStd2 )<-gsub("BodyBody", "Body", names(MatrixMeanStd2 ))
  names(MatrixMeanStd2 )<-gsub("Mag", "Magnitude", names(MatrixMeanStd2 ))
  names(MatrixMeanStd2 )<-gsub("^t", "Time", names(MatrixMeanStd2))
  names(MatrixMeanStd2 )<-gsub("^f", "Frequency", names(MatrixMeanStd2 ))                   
  names(MatrixMeanStd2 )<-gsub("tBody", "TimeBody", names(MatrixMeanStd2 ))
  names(MatrixMeanStd2 )<-gsub("-mean()", "Mean", names(MatrixMeanStd2 ), ignore.case = TRUE)
  names(MatrixMeanStd2 )<-gsub("-std()", "STD", names(MatrixMeanStd2 ), ignore.case = TRUE)
  names(MatrixMeanStd2 )<-gsub("-freq()", "Frequency", names(MatrixMeanStd2 ), ignore.case = TRUE)
  names(MatrixMeanStd2 )<-gsub("angle", "Angle", names(MatrixMeanStd2 ))
  names(MatrixMeanStd2 )<-gsub("gravity", "Gravity", names(MatrixMeanStd2 ))

  
#====================================================================================================================== 
# TASK 5 - Create a tidy data set.
# These codes rearrange the variables names according to participants and actiity ID to produce the Tidy Data. 
# The Tidy Data is then written to a file called "Tidy.txt".
#======================================================================================================================  
  
  MatrixMeanStd3  <- data.table(MatrixMeanStd2 )
  TidyData <-MatrixMeanStd3[, lapply(.SD,mean), by = 'Participants,ActivityName']
  TidyData <- TidyData[order(TidyData$Participant,TidyData$ActivityID)]
  write.table(TidyData, file = "Tidy.txt", row.names = FALSE)
  
 #====================================================================================================================== 
 # THE END
 #====================================================================================================================== 
  
