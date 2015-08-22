# Week-3-Course Project

Getting and Cleaning Data Project
==
**Rohidah Maskuri**

**The Assignment**

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


One R script called run_analysis.R shall be created that does the following

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

**The dataset includes the following files**:


- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


**How to Run the run_analysis.R script**

In the R studio console, load the run_anaysis.R file by executing this command > source('~/UCI HAR Dataset/run_analysis.R')
To view the final table, TidyData, type at the command prompt> View(TidyData). The data set shall be displayed in one section of the R Studio environment. The TidyData set is also written to a file called "Tidy.txt" at the home directory.

**How to understand the script**

The script has 9 sections with each section has its own task as below.

**PREPARATION   STEP  1** - This section loads all the needed libraries to manipulate data in tables format. This incluce library(plyr), library(data.table), and library(dplyr)

**PREPARATION Step 2** - This section reads the data from various tables in the home directory. Here are the data provided in the file format:  y_test.txt , x_test.txt, subject.txt, subject_test.txt, y_train.txt, x_train.txt, subject_train.txt

**PREPARATION STEP 3** - This section does the followings" 
   1.  Attaching the variable names available from feature datasets to the 2 data sets, XTrain & XTest
   2.  Adding 2 extra columns representing activites as well as participants to the 2 data sets, XTrain & XTest

**TASK 1** - This section corresponds to the step 1 of the assignment which merges the training and the test sets to create one data set. The codes will row bind the 2 data sets and create a Master dataset

**TASK 2** - This section extracts only the measurements on the mean and standard deviation from Master dataset
It creates a subset of data that consists only mean and standard deviation together with participants 
and activities columns. The output data set is called MatrixMeanStd

**TASK 3** - This section attaches the descriptive activity names to name the activities in the data set. The codes creates a data set called activity_labels from the activity_label.txt and merge it with the MatrixmeanStd. The new data set is called MatrixMeanStd2.

**TASK 4** - This section appropriately labels the data set with descriptive variable names. These codes search for acronyms in the column names and replace them with approriate variable names

**TASK 5** - This section create a tidy data set. These codes rearrange the variables names according to participants and activity ID to produce the Tidy Data. The Tidy Data is then written to a file called "Tidy.txt".
