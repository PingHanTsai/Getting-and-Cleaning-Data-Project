
##The Data Source

<li> Original data: 
          
          https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
</li>

<li> Original description of the dataset: 
          
          http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
</li>

##Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Data Files

'README.txt'

'features_info.txt' : Information about all of the features.

'features.txt': List of all of the features.

'activity_labels.txt': Labels of all of the activities.

'train/X_train.txt': Training data set.

'train/y_train.txt': Training data labels.

'train/subject_train.txt': Training subjects.

'test/X_test.txt': Test data set.

'test/y_test.txt': Test data labels.

'test/subject_test.txt': Test subjects.

## Data Analysis Process

<ol>
 <li> Merges the training and the test sets to create one data set. </li>
 <li> Extracts only the measurements on the mean and standard deviation for each measurement. </li>
 <li> Uses descriptive activity names to name the activities in the data set. </li>
 <li> Appropriately labels the data set with descriptive variable names. </li>
 <li> From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. </li>
</ol>

## R Script

run_analysis.R and the output is tidy_data.txt

## Summary

Features:

(1) "TimeBodyAccelerometer-mean()-X"                
(2) "TimeBodyAccelerometer-mean()-Y"                
(3) "TimeBodyAccelerometer-mean()-Z"                
(4) "TimeBodyAccelerometer-std()-X"                 
(5) "TimeBodyAccelerometer-std()-Y"                 
(6) "TimeBodyAccelerometer-std()-Z"                 
(7) "TimeGravityAccelerometer-mean()-X"             
(8) "TimeGravityAccelerometer-mean()-Y"             
(9) "TimeGravityAccelerometer-mean()-Z"             
(10) "TimeGravityAccelerometer-std()-X"              
(11) "TimeGravityAccelerometer-std()-Y"              
(12) "TimeGravityAccelerometer-std()-Z"              
(13) "TimeBodyAccelerometerJerk-mean()-X"            
(14) "TimeBodyAccelerometerJerk-mean()-Y"            
(15) "TimeBodyAccelerometerJerk-mean()-Z"            
(16) "TimeBodyAccelerometerJerk-std()-X"             
(17) "TimeBodyAccelerometerJerk-std()-Y"             
(18) "TimeBodyAccelerometerJerk-std()-Z"             
(19) "TimeBodyGyroscope-mean()-X"                    
(20) "TimeBodyGyroscope-mean()-Y"                    
(21) "TimeBodyGyroscope-mean()-Z"                    
(22) "TimeBodyGyroscope-std()-X"                     
(23) "TimeBodyGyroscope-std()-Y"                     
(24) "TimeBodyGyroscope-std()-Z"                     
(25) "TimeBodyGyroscopeJerk-mean()-X"                
(26) "TimeBodyGyroscopeJerk-mean()-Y"                
(27) "TimeBodyGyroscopeJerk-mean()-Z"                
(28) "TimeBodyGyroscopeJerk-std()-X"                 
(29) "TimeBodyGyroscopeJerk-std()-Y"                 
(30) "TimeBodyGyroscopeJerk-std()-Z"                 
(31) "TimeBodyAccelerometerMagnitude-mean()"         
(32) "TimeBodyAccelerometerMagnitude-std()"          
(33) "TimeGravityAccelerometerMagnitude-mean()"      
(34) "TimeGravityAccelerometerMagnitude-std()"       
(35) "TimeBodyAccelerometerJerkMagnitude-mean()"     
(36) "TimeBodyAccelerometerJerkMagnitude-std()"      
(37) "TimeBodyGyroscopeMagnitude-mean()"             
(38) "TimeBodyGyroscopeMagnitude-std()"              
(39) "TimeBodyGyroscopeJerkMagnitude-mean()"         
(40) "TimeBodyGyroscopeJerkMagnitude-std()"          
(41) "FrequencyBodyAccelerometer-mean()-X"           
(42) "FrequencyBodyAccelerometer-mean()-Y"           
(43) "FrequencyBodyAccelerometer-mean()-Z"           
(44) "FrequencyBodyAccelerometer-std()-X"            
(45) "FrequencyBodyAccelerometer-std()-Y"            
(46) "FrequencyBodyAccelerometer-std()-Z"            
(47) "FrequencyBodyAccelerometerJerk-mean()-X"       
(48) "FrequencyBodyAccelerometerJerk-mean()-Y"       
(49) "FrequencyBodyAccelerometerJerk-mean()-Z"       
(50) "FrequencyBodyAccelerometerJerk-std()-X"        
(51) "FrequencyBodyAccelerometerJerk-std()-Y"        
(52) "FrequencyBodyAccelerometerJerk-std()-Z"        
(53) "FrequencyBodyGyroscope-mean()-X"               
(54) "FrequencyBodyGyroscope-mean()-Y"               
(55) "FrequencyBodyGyroscope-mean()-Z"               
(56) "FrequencyBodyGyroscope-std()-X"                
(57) "FrequencyBodyGyroscope-std()-Y"                
(58) "FrequencyBodyGyroscope-std()-Z"                
(59) "FrequencyBodyAccelerometerMagnitude-mean()"    
(60) "FrequencyBodyAccelerometerMagnitude-std()"     
(61) "FrequencyBodyAccelerometerJerkMagnitude-mean()"
(62) "FrequencyBodyAccelerometerJerkMagnitude-std()" 
(63) "FrequencyBodyGyroscopeMagnitude-mean()"        
(64) "FrequencyBodyGyroscopeMagnitude-std()"         
(65) "FrequencyBodyGyroscopeJerkMagnitude-mean()"    
(66) "FrequencyBodyGyroscopeJerkMagnitude-std()"
