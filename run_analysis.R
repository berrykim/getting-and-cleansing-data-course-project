# JOHNS HOPKINS GETTING AND CLEANSING DATA
# COURSE PROJECT


# Download and read data

if(!file.exists("./data")) {dir.create("./data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/smartphone.zip") #Window user
unzip("./data/smartphone.zip", exdir="data")

testData <- read.table("./data/UCI HAR Dataset/test/X_test.txt", quote="\"")
trainData <- read.table("./data/UCI HAR Dataset/train/X_train.txt", quote="\"")

subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", quote="\"")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", quote="\"")

activity_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", quote="\"")
activity_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", quote="\"")

features <- read.table("./data/UCI HAR Dataset/features.txt", quote="\"")
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", quote="\"")



# 1 Merges the training and the test sets to create one data set.

testData1 <- data.frame(subject_test, activity_test, testData) # 2947 563
trainData1 <- data.frame(subject_train, activity_train, trainData) #7352 563
totalData <- rbind(testData1, trainData1) # 2947+7352 563

rm(activity_test, activity_train, subject_test, subject_train, 
   testData, trainData, testData1, trainData1)

colnames(totalData) <- c("subject","activity", as.character(features$V2))



#2 Extracts only the measurements on the mean and standard deviation
# for each measurement. 

grep('mean\\(\\)|std\\(\\)', features$V2, value=TRUE) # 66
grepMeanSd <- grepl('mean\\(\\)|std\\(\\)',features$V2)
grepMeanSd2 <- c(TRUE, TRUE, grepMeanSd)
subData <- totalData[,grepMeanSd2]



#3 Uses descriptive activity names to name the activities in the data set

activity <- as.factor(subData$activity)
levels(activity) <- activity_labels$V2
subData$activity <- activity



#4 Appropriately labels the data set with descriptive variable names. 

names(subData) # I think it's clear.



#5 Creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject. 

grep('mean\\(\\)', features$V2, value=TRUE) # 33
grepMean <- grepl('mean\\(\\)',features$V2)
grepMean2 <- c(TRUE, TRUE, grepMean)
subData2 <- totalData[,grepMean2]


newtidyData <- aggregate( as.matrix(subData2[,3:35]), as.list(subData2[,1:2]), FUN = mean)

write.csv(newtidyData, file="newtidyData.txt")
