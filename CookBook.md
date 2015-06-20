
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
