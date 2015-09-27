
# An R script to clean datasets from a project called Human Activity Recognition Using Smartphones

# Install and/or activate the following R packages: data.table, dplyr, tidyr

# Create new directory, get file and extract contents.
if (!file.exists("./data")) {
        dir.create("./data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Dataset.zip", method = "curl")
unzip(zipfile="./data/Dataset.zip", exdir = "./data")

# Merge the training and test sets to create one data set.
x.train <- read.table('./data/UCI HAR Dataset/train/X_train.txt')
x.test <- read.table('./data/UCI HAR Dataset/test/X_test.txt')
x <- rbind(x.train, x.test)

subj.train <- read.table('./data/UCI HAR Dataset/train/subject_train.txt')
subj.test <- read.table('./data/UCI HAR Dataset/test/subject_test.txt')
subj <- rbind(subj.train, subj.test)

y.train <- read.table('./data/UCI HAR Dataset/train/y_train.txt')
y.test <- read.table('./data/UCI HAR Dataset/test/y_test.txt')
y <- rbind(y.train, y.test)

# Extract only the measurements on the mean and standard deviation for each measurement. 
features <- read.table('./data/UCI HAR Dataset/features.txt')
mean.sd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x.mean.sd <- x[, mean.sd]

# Use descriptive activity names to name the activities in the data set.
names(x.mean.sd) <- features[mean.sd, 2]
names(x.mean.sd) <- tolower(names(x.mean.sd)) 
names(x.mean.sd) <- gsub("\\(|\\)", "", names(x.mean.sd))

activities <- read.table('./data/UCI HAR Dataset/activity_labels.txt')
activities[, 2] <- tolower(as.character(activities[, 2]))
activities[, 2] <- gsub("_", "", activities[, 2])

y[, 1] = activities[y[, 1], 2]
colnames(y) <- 'activity'
colnames(subj) <- 'subject'

# Appropriately label the data set with descriptive activity names.
data <- cbind(y, subj, x.mean.sd)
str(data)
write.table(data, './tidy.txt', row.names = FALSE)

# Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
average.df <- aggregate(x=data, by=list(activities=data$activity, subj=data$subject), FUN=mean)
average.df <- average.df[, !(colnames(average.df) %in% c("activity","subj"))]
str(average.df)
write.table(average.df, './tidyaverage.txt', row.names = FALSE)