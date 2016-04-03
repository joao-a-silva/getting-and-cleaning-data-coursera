#step 1 - read all the data

train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names="subject")
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt", col.names="label")

test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names="subject")
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt", col.names="label")

## merge all the data in only one in the format: subjects, features, labels
merge_data <- rbind(cbind(train_subjects, train_data, train_labels), 
                    cbind(test_subjects, test_data, test_labels))


# step 2 - read the features and retain feaures with mean and standard deviation
features <- read.table("UCI HAR Dataset/features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
selected_features <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

## select only the means and standard deviations from data
mean_std_data<- merge_data[, c(1, 2, selected_features$V1+1)]
mean_std_data<- cbind(mean_std_data, merge_data[merge_data$label])


# step 3 - read the activities (labels) and replace the labels in data with the activities names
labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
mean_std_data$label <- labels[mean_std_data$label, 2]


