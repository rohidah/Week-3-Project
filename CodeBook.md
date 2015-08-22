# Codebook-Getting and Cleaning Data Project
Rohidah Maskuri  
22/08/2015  

## Project Description
Human Activity Recognition Using Smartphones Dataset [1]

##Study design and data processing

###Collection of the raw data
Description of how the data was collected.
The source data set represents data collected from the accelerometers from the Samsung Galaxy S smartphone. The data set archive can be downloaded from:

Data Set URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
The data is made available by Reyes-Ortiz, Anguita, Ghio, and Oneto from the Smartlab Non Linear Complex Systems Laboratory in Genoa, Italy.

##Creating the tidy datafile

###Guide to create the tidy data file
1. Training and test data set rows were appended and then a unified data set created from the source files.
2. Measurements were extracted for mean, standard deviation for each measurement.
3. variable/column names were labeled with descriptive cleaner names.
4. Results were output as an indepenent tidy data set at ./data/TidyDataSet.tx
 

###Cleaning of the data
[README.md](./README.md). Alternatively, please refer to the README file in the working directory.

##Description of the variables in the Tidy.txt file
The Tidy.txt file consists of 180 observations against 82 variables. The variable are shown below. The data represents mean and standard deviation measurements calculated for all activities undertaken by each participant. 

 [1] "Participants"                                      "ActivityName"                                     
 [3] "ActivityID"                                        "TimeBodyAccelerometerMean()-X"                    
 [5] "TimeBodyAccelerometerMean()-Y"                     "TimeBodyAccelerometerMean()-Z"                    
 [7] "TimeGravityAccelerometerMean()-X"                  "TimeGravityAccelerometerMean()-Y"                 
 [9] "TimeGravityAccelerometerMean()-Z"                  "TimeBodyAccelerometerJerkMean()-X"                
[11] "TimeBodyAccelerometerJerkMean()-Y"                 "TimeBodyAccelerometerJerkMean()-Z"                
[13] "TimeBodyGyroscopeMean()-X"                         "TimeBodyGyroscopeMean()-Y"                        
[15] "TimeBodyGyroscopeMean()-Z"                         "TimeBodyGyroscopeJerkMean()-X"                    
[17] "TimeBodyGyroscopeJerkMean()-Y"                     "TimeBodyGyroscopeJerkMean()-Z"                    
[19] "TimeBodyAccelerometerMagnitudeMean()"              "TimeGravityAccelerometerMagnitudeMean()"          
[21] "TimeBodyAccelerometerJerkMagnitudeMean()"          "TimeBodyGyroscopeMagnitudeMean()"                 
[23] "TimeBodyGyroscopeJerkMagnitudeMean()"              "FrequencyBodyAccelerometerMean()-X"               
[25] "FrequencyBodyAccelerometerMean()-Y"                "FrequencyBodyAccelerometerMean()-Z"               
[27] "FrequencyBodyAccelerometerMeanFreq()-X"            "FrequencyBodyAccelerometerMeanFreq()-Y"           
[29] "FrequencyBodyAccelerometerMeanFreq()-Z"            "FrequencyBodyAccelerometerJerkMean()-X"           
[31] "FrequencyBodyAccelerometerJerkMean()-Y"            "FrequencyBodyAccelerometerJerkMean()-Z"           
[33] "FrequencyBodyAccelerometerJerkMeanFreq()-X"        "FrequencyBodyAccelerometerJerkMeanFreq()-Y"       
[35] "FrequencyBodyAccelerometerJerkMeanFreq()-Z"        "FrequencyBodyGyroscopeMean()-X"                   
[37] "FrequencyBodyGyroscopeMean()-Y"                    "FrequencyBodyGyroscopeMean()-Z"                   
[39] "FrequencyBodyGyroscopeMeanFreq()-X"                "FrequencyBodyGyroscopeMeanFreq()-Y"               
[41] "FrequencyBodyGyroscopeMeanFreq()-Z"                "FrequencyBodyAccelerometerMagnitudeMean()"        
[43] "FrequencyBodyAccelerometerMagnitudeMeanFreq()"     "FrequencyBodyAccelerometerJerkMagnitudeMean()"    
[45] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()" "FrequencyBodyGyroscopeMagnitudeMean()"            
[47] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"         "FrequencyBodyGyroscopeJerkMagnitudeMean()"        
[49] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"     "TimeBodyAccelerometerSTD()-X"                     
[51] "TimeBodyAccelerometerSTD()-Y"                      "TimeBodyAccelerometerSTD()-Z"                     
[53] "TimeGravityAccelerometerSTD()-X"                   "TimeGravityAccelerometerSTD()-Y"                  
[55] "TimeGravityAccelerometerSTD()-Z"                   "TimeBodyAccelerometerJerkSTD()-X"                 
[57] "TimeBodyAccelerometerJerkSTD()-Y"                  "TimeBodyAccelerometerJerkSTD()-Z"                 
[59] "TimeBodyGyroscopeSTD()-X"                          "TimeBodyGyroscopeSTD()-Y"                         
[61] "TimeBodyGyroscopeSTD()-Z"                          "TimeBodyGyroscopeJerkSTD()-X"                     
[63] "TimeBodyGyroscopeJerkSTD()-Y"                      "TimeBodyGyroscopeJerkSTD()-Z"                     
[65] "TimeBodyAccelerometerMagnitudeSTD()"               "TimeGravityAccelerometerMagnitudeSTD()"           
[67] "TimeBodyAccelerometerJerkMagnitudeSTD()"           "TimeBodyGyroscopeMagnitudeSTD()"                  
[69] "TimeBodyGyroscopeJerkMagnitudeSTD()"               "FrequencyBodyAccelerometerSTD()-X"                
[71] "FrequencyBodyAccelerometerSTD()-Y"                 "FrequencyBodyAccelerometerSTD()-Z"                
[73] "FrequencyBodyAccelerometerJerkSTD()-X"             "FrequencyBodyAccelerometerJerkSTD()-Y"            
[75] "FrequencyBodyAccelerometerJerkSTD()-Z"             "FrequencyBodyGyroscopeSTD()-X"                    
[77] "FrequencyBodyGyroscopeSTD()-Y"                     "FrequencyBodyGyroscopeSTD()-Z"                    
[79] "FrequencyBodyAccelerometerMagnitudeSTD()"          "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
[81] "FrequencyBodyGyroscopeMagnitudeSTD()"              "FrequencyBodyGyroscopeJerkMagnitudeSTD()"  


###Variables

For each observation, the variables provide
 1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
 2. Triaxial Angular velocity from the gyroscope. 
 3. A 561-feature vector with time and frequency domain variables. 
 4. Its activity label. 
 5. An identifier of the subject who carried out the experiment.





