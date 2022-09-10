library(tidyverse)


# STEP 1 - Get and unzip data file

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- "Dataset.zip"

if (!file.exists(file)) {
  download.file(url, file, method="curl")
}

path <- "UCI HAR Dataset"
if (!file.exists(path)) {
  unzip(file)
}


# STEP 2 - Extract data

# Extract train data
train_subjects <- read.table(file.path(path, "train", "subject_train.txt"))
train_values <- read.table(file.path(path, "train", "X_train.txt"))
train_activities <- read.table(file.path(path, "train", "y_train.txt"))

# Extract test data
test_subjects <- read.table(file.path(path, "test", "subject_test.txt"))
test_values <- read.table(file.path(path, "test", "X_test.txt"))
test_activities <- read.table(file.path(path, "test", "y_test.txt"))

# Extract features
features <- read.table(file.path(path, "features.txt"))

# Extract activities
activities <- read.table(file.path(path, "activity_labels.txt"))
colnames(activities) <- c("id", "activity_label")


# STEP 3 - Merge the train and test sets

all_activities <- rbind(
  cbind(train_subjects, train_values, train_activities),
  cbind(test_subjects, test_values, test_activities))


#delete tables
rm(train_subjects, train_values, train_activities, 
   test_subjects, test_values, test_activities)


# STEP 4 - Extract data on mean and 


colnames(all_activities) <- c("subject", features[, 2], "activity")
selection <- grepl("subject|activity|mean\\(|std\\(", colnames(all_activities))
all_activities <- all_activities[, selection]


# STEP 5 - Use descriptive activity names

all_activities <- all_activities %>% 
  left_join(activities,by=c("activity"="id")) %>% 
  select(-activity)


# STEP 6 - Set descriptive variable names

dfnames <- colnames(all_activities)

dfnames <- gsub("[\\(\\)]", "", dfnames)
dfnames <- gsub("Freq", "Frequency", dfnames)
dfnames <- gsub("^f", "Frequency", dfnames)
dfnames <- gsub("^t", "Time", dfnames)
dfnames <- gsub("Acc", "Accelerometer", dfnames)
dfnames <- gsub("Gyro", "Gyroscope", dfnames)
dfnames <- gsub("Mag", "Magnitude", dfnames)
dfnames <- gsub("mean", "Mean", dfnames)
dfnames <- gsub("std", "StandardDeviation", dfnames)

colnames(all_activities) <- dfnames


# STEP 7 - Group_by subject and activity + summarise with mean

all_activities_mean <- all_activities %>% 
  group_by(subject, activity_label) %>%
  summarise_each(funs(mean))


# STEP 8 - Export table to "tidy_data.txt"

write.table(all_activities_mean, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)
