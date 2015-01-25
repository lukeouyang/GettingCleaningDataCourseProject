##########################################################################################################

## Getting and Cleaning Data Course Project
## Weichen Ouyang
## 2015-01-24

## Major routines of this script

# 0. Download and unzip the raw data into the working directory.
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

##########################################################################################################

#### 0. Download and unzip the raw data into the working directory.


if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/RawData.zip")

unzip(zipfile="./data/RawData.zip",exdir="./data")
path<-file.path("./data" , "UCI HAR Dataset")

#### 1. Merge the training and the test sets to create one data set.

#Load Data into separate data frame

TestData  <- read.table(file.path(path, "test" , "X_test.txt" ),header = FALSE)
TrainData <- read.table(file.path(path, "train", "X_train.txt"),header = FALSE)

ActivityTest  <- read.table(file.path(path, "test" , "Y_test.txt" ),header = FALSE)
ActivityTrain <- read.table(file.path(path, "train", "Y_train.txt"),header = FALSE)

SubjectTrain <- read.table(file.path(path, "train", "subject_train.txt"),header = FALSE)
SubjectTest  <- read.table(file.path(path, "test" , "subject_test.txt"),header = FALSE)

#Merge gathered measure Data using row-binding
dataMeasures<- rbind(TrainData, TestData)

#Merge subject Data using row-binding
dataSubject <- rbind(SubjectTrain, SubjectTest)
names(dataSubject)<-c("subject")

#Merge activity Data using row-binding
dataActivity<- rbind(ActivityTrain, ActivityTest)
names(dataActivity)<- c("activity")

#Load colomn names from features.txt, then update the column name of measure data
dataMeasuresNames <- read.table(file.path(path, "features.txt"),head=FALSE)
names(dataMeasures)<- dataMeasuresNames$V2

#Merge the activity, subject, measures data using column-binding, generate a single table called "Data"
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataCombine,dataMeasures)


#### 2. Extract only the measurements on the mean and standard deviation for each measurement. 

#Identify selected measure names
subdataMeasuresNames<-dataMeasuresNames$V2[grep("mean\\(\\)|std\\(\\)", dataMeasuresNames$V2)]
selectedMeasures<-c("subject", "activity", as.character(subdataMeasuresNames))

#subset the Data
Data<-subset(Data,select=selectedMeasures)


#### 3. Use descriptive activity names to name the activities in the data set

#Load the activity name corresponding to each activity type in Data table
activityLabels <- read.table(file.path(path, "activity_labels.txt"),header = FALSE)

#replace the activity type with the name
Data[, 2] <- activityLabels[Data[, 2], 2]


#### 4. Appropriately label the data set with descriptive activity names. 


#Using gsub() to change the column names
names(Data)<-gsub("\\()", "", names(Data))
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))
names(Data)<-gsub("-std$","StdDev", names(Data))
names(Data)<-gsub("-mean","Mean", names(Data))

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#aggregate the Data table along subject and activity demensions to create a new data table called tidyData
library(plyr);
tidyData<-aggregate(. ~subject + activity, Data, mean)
tidyData<-arrange(tidyData,subject,activity)

#output
write.table(tidyData, file = "tidydata.txt",row.name=FALSE)