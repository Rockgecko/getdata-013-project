# Script to process Course Project data
# Created: 24/4/15 
# Author: Rockgecko

# This script assumes it is being run from a folder containing the unzipped UCI dataset
# in a sub-folder called "UCI HAR Dataset"

# libraries used: dplyr
library(dplyr)

# read in the test and training datasets previously downloaded
testData<-read.table("./UCI HAR Dataset/test/X_test.txt")
trainingData<-read.table("./UCI HAR Dataset/train/X_train.txt")

# merge the test and training datasets
combinedData<-bind_rows(testData,trainingData)

# load file with variable labels
labels<-read.table("./UCI HAR Dataset/features.txt")
# find only rows that contain the string "mean()" or "std()" in any position
selectedRows<-which(grepl(".+(mean\\(\\)|std\\(\\)).*",labels[,2]))

# extract only columsn with indices matching the selected rows
meanAndstdData<-combinedData[,selectedRows]

# rename data set columns with the variable names used in features.txt
names(meanAndstdData) <- labels[selectedRows,2]

# read in the subject and activity id files 
subj1<-read.table("./UCI HAR Dataset/test/subject_test.txt")
subj2<-read.table("./UCI HAR Dataset/train/subject_train.txt")
activities1<-read.table("./UCI HAR Dataset/test/y_test.txt")
activities2<-read.table("./UCI HAR Dataset/train/y_train.txt")

combinedSubj<-bind_rows(subj1,subj2)
combinedActs<-bind_rows(activities1,activities2)

# read in activity labels from file
actNames<-read.table("./UCI HAR Dataset/activity_labels.txt")

# names the new dataframes before combining with main data
names(combinedSubj)<-"Subjects"
names(combinedActs)<-"Activities"

# get Activity Type names for each Activity id
descActs<-data.frame(actNames$V2[ match(combinedActs$Activities,actNames$V1)])
names(descActs)<-"ActivityType"

# combine activity and subject info into main dataframe
meanAndstdData<-bind_cols(combinedSubj, descActs, meanAndstdData)

# Finally, calculate means for each variable grouped by ActivityType and Subject
summaryData<-group_by(meanAndstdData, ActivityType,Subjects) %>%
    summarise_each(funs(mean))

# write summary data to a file
write.table(summaryData,file="UCI_HAR_summaryData.txt",row.names=FALSE)
