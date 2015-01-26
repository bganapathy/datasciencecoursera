# Pre- requiste 1: Load the training data

traindata <- read.table("train.txt")

#Pre- requiste 2:Load the test data

testdata <- read.table("test.txt")

#Pre- requiste 3: Load the features data

#Step 1: Merge the two data sets : Trainging and Test.

mergeData <- rbind(testdata,traindata)

#Check if there are duplicate values in the merged data set.
which(duplicated(mergeData))

#Step 2:Extract the data for mean and standard Deviation from the merged data set.
extractedData <- mergeData[554:561]

#Step 3 & 4: Assign names to the columns of the extracted data set.
names(extractedData) <-c("Walking","WalkingUpstairs","WalkingDownstairs","Sitting","Standing","Laying","Talking")
#Step 5: Tidy the data using the average of all the subjects and activities.
tidyDataset <- aggregate(extractedData, by=list(extractedData$Walking, extractedData$WalkingUpstairs,extractedData
                                                $Sitting,extractedData$Standing,extractedData$Laying,extractedData$Talking), FUN=mean)

#Final Step: Write the tidy data to a text file.
write.table(tidyDataset,file="TidyDataSet",row.name=FALSE)
