
library(plyr)

############################################################################
## 1. Merges the training and the test sets to create one data set.
############################################################################

x_train = read.table("./train/X_train.txt")
y_train = read.table("./train/y_train.txt")
subject_train = read.table("./train/subject_train.txt")

x_test = read.table("./test/X_test.txt")
y_test = read.table("./test/y_test.txt")
subject_test = read.table("./test/subject_test.txt")

x_data = rbind(x_train, x_test)
y_data = rbind(y_train, y_test)
subject_data = rbind(subject_train, subject_test)

############################################################################
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
############################################################################

features = read.table("./features.txt")
extract_features = grep("mean\\(\\)|std\\(\\)", features[,2])
x_data = x_data[, extract_features]

############################################################################
## 3. Uses descriptive activity names to name the activities in the data set.
############################################################################

activities = read.table("./activity_labels.txt")
y_data[, 1] = activities[y_data[, 1], 2]

############################################################################
## 4. Appropriately labels the data set with descriptive variable names.
############################################################################

names(x_data) = features[extract_features, 2]
names(y_data) = "activities"
names(subject_data) = "subject"

finaldata = cbind(x_data, y_data, subject_data)

names(finaldata) = gsub("^t", "Time", names(finaldata))
names(finaldata) = gsub("^f", "Frequency", names(finaldata))
names(finaldata) = gsub("Acc", "Accelerometer", names(finaldata))
names(finaldata) = gsub("Gyro", "Gyroscope", names(finaldata))
names(finaldata) = gsub("Mag", "Magnitude", names(finaldata))
names(finaldata) = gsub("BodyBody", "Body", names(finaldata))

############################################################################
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
############################################################################

tidy_finaldata = aggregate(. ~subject + activities, finaldata, mean)
tidy_finaldata = tidy_finaldata[order(tidy_finaldata$subject, tidy_finaldata$activities),]
write.table(tidy_finaldata, file = "./tidy_data.txt", row.name=FALSE)





