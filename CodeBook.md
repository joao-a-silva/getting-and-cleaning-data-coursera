# Codebook for wearable computing dataset


## Variables
### subject             
    Subject number:  Unique identifier assigned to each subject. Values 1..30.

### label  
    Acitivity label: one from "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

### features
    tbodyaccmeanx, tbodyaccmeany, tbodyaccmeanz, tbodyaccstdx, tbodyaccstdy, tbodyaccstdz, gravityaccmeanx, tgravityaccmeany, tgravityaccmeanz, tgravityaccstdx, tgravityaccstdy, tgravityaccstdz, tbodyaccjerkmeanx,tbodyaccjerkmeany, tbodyaccjerkmeanz, tbodyaccjerkstdx, tbodyaccjerkstdy, tbodyaccjerkstdz, tbodygyromeanx, tbodygyromeany, tbodygyromeanz, tbodygyrostdx, tbodygyrostdy, tbodygyrostdz, tbodygyrojerkmeanx, tbodygyrojerkmeany, tbodygyrojerkmeanz, tbodygyrojerkstdx, tbodygyrojerkstdy, tbodygyrojerkstdz, tbodyaccmagmean, tbodyaccmagstd, tgravityaccmagmean, tgravityaccmagstd, tbodyaccjerkmagmean, tbodyaccjerkmagstd, tbodygyromagmean, tbodygyromagstd, tbodygyrojerkmagmean, tbodygyrojerkmagstd, fbodyaccmeanx, fbodyaccmeany, fbodyaccmeanz, fbodyaccstdx, fbodyaccstdy, fbodyaccstdz, fbodyaccjerkmeanx, fbodyaccjerkmeany, fbodyaccjerkmeanz, fbodyaccjerkstdx, fbodyaccjerkstdy, fbodyaccjerkstdz, fbodygyromeanx, fbodygyromeany, fbodygyromeanz, fbodygyrostdx, fbodygyrostdy, fbodygyrostdz, fbodyaccmagmean, fbodyaccmagstd, fbodybodyaccjerkmagmean, fbodybodyaccjerkmagstd, fbodybodygyromagmean, fbodybodygyromagstd, fbodybodygyrojerkmagmean, fbodybodygyrojerkmagstd.

    The features are described below.

## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Prefix 't' denotes time and these domain signals were captured at a constant rate of 50 Hz.

In order to remove noise, the features were with a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz. Also, the acceleration signal was splitt ed into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ), with another low pass Butterworth filter, but in this time corner frequency used was 0.3 Hz.

Then the body linear acceleration and angular velocity were derived in time, in order to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Subsequently the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals in order to produce fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag and fBodyGyroJerkMag. The 'f' in the features indicates frequency domanin signal.

These signals were used to estimate variables of the feature vector for all patterns '-XYZ', which is used to denote 3-axial signals in the X, Y and Z directions. The set of variables that were estimated from these signals are:

mean: Mean value
std: Standard deviation

## Transformation

All the values are means, aggregated over 30 subjects and 6 activities. The resulting dataset have 180 rows and 68 columns.
