---
title: "Getting and Cleaning Data Project Codebook"
author: "Weichen Ouyang"
date: "Sunday, January 25, 2015"
output: html_document
---


## Description
This Code Book contains information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

## Source Data
A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The source data for this project can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- Features are normalized and bounded within [-1,1].

## Variable Description of tidy data

Total number of variables: 68

 1. subject:
 experiment subjects
 type: integer
 range: [1,30]
 
 
 2. activity:
 subject's activity type
 type: factor
 range: 
 1 WALKING
 2 WALKING_UPSTAIRS
 3 WALKING_DOWNSTAIRS
 4 SITTING
 5 STANDING
 6 LAYING
 
 3.~ 68.
 variable names:
 timeBodyAccelerometerMean-X
 timeBodyAccelerometerMean-Y   
 timeBodyAccelerometerMean-Z 
 timeBodyAccelerometer-std-X    
 timeBodyAccelerometer-std-Y 
 timeBodyAccelerometer-std-Z  
 timeGravityAccelerometerMean-X   
 timeGravityAccelerometerMean-Y     
 timeGravityAccelerometerMean-Z    
 timeGravityAccelerometer-std-X                 
 timeGravityAccelerometer-std-Y                 
 timeGravityAccelerometer-std-Z                 
 timeBodyAccelerometerJerkMean-X                
 timeBodyAccelerometerJerkMean-Y                
 timeBodyAccelerometerJerkMean-Z                
 timeBodyAccelerometerJerk-std-X                
 timeBodyAccelerometerJerk-std-Y                
 timeBodyAccelerometerJerk-std-Z                
 timeBodyGyroscopeMean-X                        
 timeBodyGyroscopeMean-Y                        
 timeBodyGyroscopeMean-Z                       
 timeBodyGyroscope-std-X                       
 timeBodyGyroscope-std-Y                       
 timeBodyGyroscope-std-Z                       
 timeBodyGyroscopeJerkMean-X                   
 timeBodyGyroscopeJerkMean-Y                   
 timeBodyGyroscopeJerkMean-Z                   
 timeBodyGyroscopeJerk-std-X                    
 timeBodyGyroscopeJerk-std-Y                    
 timeBodyGyroscopeJerk-std-Z                   
 timeBodyAccelerometerMagnitudeMean             
 timeBodyAccelerometerMagnitudeStdDev           
 timeGravityAccelerometerMagnitudeMean          
 timeGravityAccelerometerMagnitudeStdDev        
 timeBodyAccelerometerJerkMagnitudeMean         
 timeBodyAccelerometerJerkMagnitudeStdDev       
 timeBodyGyroscopeMagnitudeMean                 
 timeBodyGyroscopeMagnitudeStdDev               
 timeBodyGyroscopeJerkMagnitudeMean             
 timeBodyGyroscopeJerkMagnitudeStdDev           
 frequencyBodyAccelerometerMean-X               
 frequencyBodyAccelerometerMean-Y              
 frequencyBodyAccelerometerMean-Z               
 frequencyBodyAccelerometer-std-X               
 frequencyBodyAccelerometer-std-Y               
 frequencyBodyAccelerometer-std-Z               
 frequencyBodyAccelerometerJerkMean-X          
 frequencyBodyAccelerometerJerkMean-Y          
 frequencyBodyAccelerometerJerkMean-Z           
 frequencyBodyAccelerometerJerk-std-X           
 frequencyBodyAccelerometerJerk-std-Y           
 frequencyBodyAccelerometerJerk-std-Z          
 frequencyBodyGyroscopeMean-X                   
 frequencyBodyGyroscopeMean-Y                   
 frequencyBodyGyroscopeMean-Z                   
 frequencyBodyGyroscope-std-X                  
 frequencyBodyGyroscope-std-Y                   
 frequencyBodyGyroscope-std-Z                   
 frequencyBodyAccelerometerMagnitudeMean        
 frequencyBodyAccelerometerMagnitudeStdDev      
 frequencyBodyAccelerometerJerkMagnitudeMean    
 frequencyBodyAccelerometerJerkMagnitudeStdDev  
 frequencyBodyGyroscopeMagnitudeMean            
 frequencyBodyGyroscopeMagnitudeStdDev          
 frequencyBodyGyroscopeJerkMagnitudeMean        
 frequencyBodyGyroscopeJerkMagnitudeStdDev
 
 type: numeric
 range:[-1,1]