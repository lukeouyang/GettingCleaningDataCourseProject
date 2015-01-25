# Getting and Cleaning Data Project

Weichen Ouyang

This Repo is created for the course project in the Data Science's track course "Getting and Cleaning data".

## Project Overview
This project serves to demonstrate the process of collecting and processing a raw data set to a tidy data set which can be used for 
downstream data analysis. Detail description of the data used in this project can be found at [The UCI Machine Learning Repository]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The raw data for this project can be download from here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR
%20Dataset.zip)

## Files

The code takes for granted all the data is present in the same folder, un-compressed and without names altered.

`CodeBook.md` describes the source data, experiment design, and variables.

`run_analysis.R` contains all the R scripts to perform the 5 steps getting and cleaning operations casted on the raw data. It can be launched in R 3.1.1 and newer version.


`tidydata.txt` is the tidy data file generate for the project.

`README.md` contains the information of the Project, files within the repo, and step-by-step instructions of cleaning operations in terms of R scripts in `run_analysis.R`.


## Operation Summary
The following is a summary description of the project instructions:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Operation Detail
   Dependencies: 'plyr' package is needed.
   
1. Merges the training and the test sets to create one data set.
        Call read.table() to load test and train data set;
        Merge the two data tables into one data table called "dataMeasures" using row-binding;
        Merge corresponding subject and activity data table with the "dataMeasures" table to create the one data set: called "Data".
   
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
        Identify the columns needed, then subset and update the "Data" table. This operation decrease the number of variable from 561 to 68.
   
3. Uses descriptive activity names to name the activities in the data set
        Establish a new data table called "activityLabels" containing the mapping mechanism from activity type numbers to descriptive activity names(load "activity_labels.txt"). Then replace the activity type number with the activity names accordingly.
        
4. Appropriately labels the data set with descriptive activity names. 
        Call gsub() function to replace the column names of "Data" table with more descriptive ones.
        
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        Using aggregate() and arrange() functions in the "plyr" package to generate the new data set called "tidydata";Then output the file to the working environment using write.table().
