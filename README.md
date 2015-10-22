# Coursera-getting-and-cleaning-data

This file describes how to run the run_analysis script on the data set.

1. Start by unzipping the raw data from the following link to a file on your pc:
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Make sure the run_analysis.R script is in the same directory as the data just downloaded

3. Use source("run_analysis.R") to run the script

4. You will see that a new file is created, called 'tidy_data.txt', which is the new, tidied data set. This can then be read back into R as a data frame using the read.table() command.
