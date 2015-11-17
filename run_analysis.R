#Load required packages
library(dplyr)
library(reshape2)

#Read in all tables
testdata <- read.table("./test/X_test.txt") #Test dataset
testlabels <- read.table("./test/y_test.txt") #Activity type for each row of the test dataset
testsubjects <- read.table("./test/subject_test.txt") #Subject ID for each row of test dataset
traindata <- read.table("./train/X_train.txt") #Training dataset
trainlabels <- read.table("./train/y_train.txt") #Activity type for each row of the the training dataset
trainsubjects <- read.table("./train/subject_train.txt") #Subject ID for each row of training dataset
features <- read.table("./features.txt") #Variable names for test and training datasets
activity_labels <- read.table("./activity_labels.txt") #Descriptive label for each activity type

#Add variable names to test and training datasets
names(testdata) <- features[,2]
names(traindata) <- features[,2]

#Add column names to subject ID, activity type, and activity description vectors
names(testsubjects) <- "subjectid"
names(trainsubjects) <- "subjectid"
names(testlabels) <- "classlabel"
names(trainlabels) <- "classlabel"
names(activity_labels) <- c("classlabel", "activity")

#Add subject ID and activity type vectors to test and training datasets
testdata_labelled <- cbind(testsubjects, testlabels, testdata)
traindata_labelled <- cbind(trainsubjects, trainlabels, traindata)

#Merge labelled test and training datasets
alldata <- rbind(testdata_labelled, traindata_labelled)

#Merge complete dataset with activity labels to get activity description for each observation
alldata_actdesc <- merge(activity_labels, alldata, by.x="classlabel", by.y="classlabel")

#Select only the mean and standard deviation for each measurement (along with the subjectid and activity variables)
meanstd <- select(alldata_actdesc, subjectid, activity, contains("mean()"), contains("std()"))

#Melt meanstd dataframe to create a long dataset with a row for each mean/std measurement
meanstdMelt <- melt(meanstd, id=c("subjectid", "activity"))

#Cast melted dataframe: create a new dataframe with calculated average for each subject-activity combination
justavg <- dcast(meanstdMelt, subjectid + activity ~ variable, mean)

#Rename variable names to indicate that each variable is the average of the measurement for each subject-activity
names(justavg) <- paste("average", names(justavg), sep="_")

#Create a unique ID that combines the subject ID and activity name
justavg_id <- mutate(justavg, id_activity=paste(average_subjectid, average_activity, sep="-"))

#Re-order variables so the unique ID is the first column, and delete the subjectid and activity variables
finaldataset <- select(justavg_id, id_activity, 3:68)

#Write final dataset to .txt file
write.table(finaldataset, file = "./finaldataset.txt", row.name=FALSE)