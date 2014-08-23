# Read all files into R
# This code assumes that the zip file for the project has been downloaded
# and unzipped to the working directory
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# The data files had no column names, so the variables were read with generic
# names like V1, V2, and so on. Give them proper names:
colnames(y.train) <- colnames(y.test) <- "activity"
colnames(subject.train) <- colnames(subject.test) <- "subject"
colnames(x.train) <- colnames(x.test) <- features$V2

# Now I will create a unique dataset with training and test data
train <- cbind(subject.train, x.train, y.train)
test <- cbind(subject.test, x.test, y.test)
mydata <- rbind(train, test)

# Extract the measurements on the mean and standard deviation for each measurement. 
# According to features_info.txt these measurements have the text "mean()" and
# "std()" in their names
# I will also keep "subject" (column 1) and "activity" (column 563) in the dataset
mydata.sub <- mydata[, c(1, grep(".*mean\\()|std\\().*", colnames(mydata)), 563)]

# Now I will use the activity names I read from activity_labels.txt to replace
# the activity codes in the dataset
mydata.sub$activity <- factor(mydata.sub$activity, labels = activities$V2)

# Label the data set with descriptive variable names
# I use lower case letter for variable names, and words.separated.with.dots
names <- colnames(mydata.sub)[2:67]
names <- gsub("[[:punct:]]", "", names)
names <- gsub("^t", "time.", names)
names <- gsub("^f", "freq.", names)
names <- gsub("BodyBody", "Body", names)
names <- gsub("Acc", ".acceleration.", names)
names <- gsub("Gyro", ".gyroscope.", names)
names <- gsub("Jerk", "jerk.", names)
names <- gsub("Mag", "magnitude.", names)
names <- gsub("mean", "mean.", names)
names <- gsub("std", "standard.deviation.", names)
names <- gsub("\\.$", "", names)
names <- tolower(names)
colnames(mydata.sub)[2:67] <- names

# Finally, I create a tidy data set with the average of each variable for
# each activity and each subject, and modify variable names to indicate
# that they refer to the mean of the previous measurements
tidy <- aggregate(. ~ subject + activity, data = mydata.sub, mean)
colnames(tidy)[3:68] <- paste0("mean.of.", colnames(tidy)[3:68])

# Write the tidy data set to a txt file for submission
write.table(tidy, file="tidy_means.txt", sep="\t", quote=FALSE, row.names=FALSE)

