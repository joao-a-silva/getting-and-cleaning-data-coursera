# Getting and cleaning data
Creating a tidy data set from data originally from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files in this repo

* README.md -- this file.
* CodeBook.md -- codebook describing variables, the data and transformations
* run_analysis.R -- the R script to creating the tidy data set.

## analysis.R goals
The R script, named run_analysis.R, should does the following:

1. Merges the training and the test data sets in order to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The script assumes it has in it's working directory a folder named UCI HAR Dataset. Inside it, must be the following files and folders:

* activity_labels.txt
* features.txt
* test/
* train/

The script's output is created in working directory with the name of tidy2.txt

## analysis.R walkthrough

It follows the goals step by step.

* 1: Read all the test and training files and combine the files to a data frame in the form of subjects, features and labels.

* 2: Read the features from features.txt and filter it to only leave features that are either means or standard deviations . Then, a new data frame is created for includes subjects, the described features ane labels.

* 3: Read the activity labels from activity_labels.txt. Then replace the numbers with the text.

* 4: Make a column list (includig "subjects" and "label" at the start). In this step is removed all non-alphanumeric characters and converting the result to lowercase. Then, apply new column names to the data frame.

* 5: Using the agregate() function in order to create a new data frame by finding the mean for each combination of subject and label. 

* Write the new tidy set into a text file called tidy2.txt.