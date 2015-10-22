library(dplyr)
library(tidyr)

## create data frames from input files

x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/Y_test.txt")

x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/Y_train.txt")

sub_test <- read.table("./test/subject_test.txt")
sub_train <- read.table("./train/subject_train.txt")

features <- read.table("./features.txt")
act_lab <- read.table("./activity_labels.txt")

## concatenate the 'test' and 'train' datasets

x_full <- bind_rows(x_test, x_train)
y_full <- bind_rows(y_test, y_train)
sub_full <- bind_rows(sub_test, sub_train)

## set names to variables

names(sub_full) <- ("subject")
names(y_full) <- ("activity")
names(x_full) <- features$V2

## merge columns to create data frame of all data

data_temp <- cbind(sub_full, y_full)
data_merge <- cbind(x_full, data_temp)

## extract only the measurements for the mean and standard deviation for each measurement

feat_subset <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
select_names <- c(as.character(feat_subset), "subject", "activity")
x_subset <- subset(data_merge, select = select_names)

## use descriptive activity names to name the activities in the data set

x_subset$activity <- act_lab[,2][match(x_subset$activity, act_lab[,1])]

## appropriately label the data set with descriptive variable names

names(x_subset) <- gsub("^t", "time", names(x_subset))
names(x_subset) <- gsub("^f", "frequency", names(x_subset))
names(x_subset) <- gsub("Acc", "Accelerometer", names(x_subset))
names(x_subset) <- gsub("Gyro", "Gyroscope", names(x_subset))
names(x_subset) <- gsub("Mag", "Magnitude", names(x_subset))
names(x_subset) <- gsub("BodyBody", "Body", names(x_subset))


## create a second, independent tidy data set and output it

tidy_data <- x_subset %>%
        group_by(subject, activity) %>%
        arrange(subject) %>%
        summarise_each(funs(mean))

write.table(tidy_data, 'tidy_data.txt', row_names = FALSE, sep = "\t")







