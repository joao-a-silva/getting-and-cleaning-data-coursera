# 1 - read all the data

train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names="subject")
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt", col.names="label")

test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names="subject")
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt", col.names="label")

## merge all the data in only one in the format: subjects, features, labels
merge_data <- rbind(cbind(train_subjects, train_data, train_labels), 
                    cbind(test_subjects, test_data, test_labels))

# 2 - read the features and retain feaures with mean and standard deviation
features <- read.table("UCI HAR Dataset/features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
selected_features <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

## select only the means and standard deviations from data
mean_std_data<- merge_data[, c(1, selected_features$V1+1, ncol(merge_data))]
#mean_std_data<- cbind(mean_std_data, merge_data$label)


#  3 - read the activities (labels) and replace the labels in data with the activities names
labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
mean_std_data$label <- labels[mean_std_data$label, 2]


# 4 - make a list of the current column and feature names and tidy that list by removing all 
# non-alphabetic character. Also converting to lowercase. Finally, use the list as column names 
# for the data
new_col_names <- c("subject", selected_features$V2, "label")
clean_col_names <- tolower(gsub("[^[:alpha:]]", "", new_col_names))
colnames(mean_std_data) <- clean_col_names

# 5 - find the mean  average of each variable for each activity and each subject.

tidy_data <- aggregate(mean_std_data[, 3:ncol(mean_std_data)-1],
                                    by=list(subject = mean_std_data$subject, 
                                            label = mean_std_data$label),
                                    mean)
dim(tidy_data)
## write the data for upload
write.table(format(tidy_data, scientific=T), "tidy2.txt", row.names=F, col.names=F, quote=2)