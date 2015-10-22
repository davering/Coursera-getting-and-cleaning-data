# Course Project Code Book
## The data source
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Set Information
The dataset includes the following files:

'README.txt'
'features.txt':   List of all features

'features_info.txt':   Gives information on the variables in the features vector

'activity_labels.txt':   Links the class labels with their activity names

'train/X_train.txt': Training set

'train/y_train.txt': Training labels

'test/X_test.txt': Test set

'test/y_test.txt': Test labels

'subject_train.txt' / 'subject_test.txt':  Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'total_acc_x_train.txt' / 'total_acc_x_test.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row is a 128 element vector. Similar files are included for the Y and Z axes.

'body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. Also Y and Z axes.

'body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. Also Y and Z axes.

## Script details

There are 5 parts to the run_analysis.R script:

1. Merges the training and the test sets to create one data set
 
2. Extracts only the measurements on the mean and standard deviation for each measurement
 
3. Uses descriptive activity names to name the activities in the data set
 
4. Appropriately labels the data set with descriptive activity names
 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject and outputs it as 'tidy_data.txt'
