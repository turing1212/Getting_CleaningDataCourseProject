#### 0 Get Data ####
# download the data file and put it in a folder in the current workspace

# 1. check if there is a folder called "data" if not, create one
if (!file.exists("./data")) { 
    dir.create("./data") 
} 

# 2. download the data file
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <- "./data/dataset.zip"
download.file(fileurl, filename, method = "curl") 

# 3. unzip the zip-file
unzip(filename, exdir = "./data")

# 4. list the files in the unzipped file
path1 <- paste0(getwd(),"/data")
dir(path1)
path2 <- "./data/UCI HAR Dataset"
files <- list.files(path2, recursive = TRUE) 
files

#### 1 Merges the training and the test sets to create one data set ####
# 1. read data from the data folder
path3 <- paste0(getwd(),"/data/UCI HAR Dataset/")
path3
subject_train <- read.table(paste0(path3,"train/subject_train.txt"))
X_train <- read.table(paste0(path3,"train/X_train.txt"))
y_train <- read.table(paste0(path3,"train/y_train.txt"))
subject_test <- read.table(paste0(path3,"test/subject_test.txt"))
X_test <- read.table(paste0(path3,"test/X_test.txt"))
y_test <- read.table(paste0(path3,"test/y_test.txt"))

# 2. see the structure of these data
head(subject_train)
head(X_train)
head(y_train)
head(subject_test)
head(X_test)
head(y_test)

# 3. merge data
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subid <- rbind(subject_train, subject_test)
names(subid) <- "subject"
names(y) <- "activity"

featureNames <- read.table(paste0(path3,"features.txt")) # read in the feature names
names(X) <- featureNames$V2
fulldata <- cbind(subid, y, X)

#### 2 Extracts only the measurements on the mean and standard deviation for each measurement ####
library(dplyr)
selectVNames <- featureNames$V2[grep("mean\\(\\)|std\\(\\)", featureNames$V2)]
tidyData <- fulldata %>% select(subject, activity, all_of(selectVNames))

#### 3 Uses descriptive activity names to name the activities in the data set ####
activities <- read.table(paste0(path3, "activity_labels.txt")) # read in the activity labels
tidyData$activity <- factor(tidyData$activity, levels = activities[,1], labels = activities[,2])
head(tidyData$activity)

#### 4 Appropriately labels the data set with descriptive variable names ####
names(tidyData)<-gsub("^t", "time", names(tidyData))
names(tidyData)<-gsub("^f", "frequency", names(tidyData))
names(tidyData)<-gsub("Acc", "Accelerometer", names(tidyData))
names(tidyData)<-gsub("Gyro", "Gyroscope", names(tidyData))
names(tidyData)<-gsub("Mag", "Magnitude", names(tidyData))
names(tidyData)<-gsub("BodyBody", "Body", names(tidyData))
names(tidyData)
write.table(tidyData, file = "./data/tidyData.txt",row.name=FALSE)

#### 5 From the data set in step 4, creates a second, independent ####
#### tidy data set with the average of each variable for each 
#### activity and each subject.
library(plyr)
tidyData2 <- aggregate(. ~subject + activity, tidyData, mean)
tidyData2 <- tidyData2[order(tidyData2$subject,tidyData2$activity),]
write.table(tidyData2, file = "./data/tidyData2.txt",row.name=FALSE)
