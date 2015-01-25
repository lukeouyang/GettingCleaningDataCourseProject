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

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.

`run_analysis.R` contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing 
the file.

The output of the 5th step is called `averages_data.txt`, and uploaded in the course project's form.


### Project Summary
The following is a summary description of the project instructions

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
