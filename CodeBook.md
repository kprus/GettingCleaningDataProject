Code Book for finaldataset.txt
==============================

The finaldataset.txt dataset shows the average value of each measurement for each activity done by each subject.

id_activity is a unique identifier of the form x-activity, where x is the subject ID number and activity is the 
descriptive name of the activity being done by the subject when the measurements were taken.

This dataset includes 180 observations: one for each of the 30 subjects (numbered consecutively) performing each
of the following 6 activities:

-WALKING
-WALKING_UPSTAIRS
-WALKING_DOWNSTAIRS
-SITTING
-STANDING
-LAYING

The measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time
domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered
using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and
tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ,
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate
frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: 
Note: Features are normalized and bounded within [-1,1]. 

-tBodyAcc-X
-tBodyAcc-Y
-tBodyAcc-Z
-tGravityAcc-X
-tGravityAcc-Y
-tGravityAcc-Z
-tBodyAccJerk-X
-tBodyAccJerk-Y
-tBodyAccJerk-Z
-tBodyGyro-X
-tBodyGyro-Y
-tBodyGyro-Z
-tBodyGyroJerk-X
-tBodyGyroJerk-Y
-tBodyGyroJerk-Z
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-X
-fBodyAcc-Y
-fBodyAcc-Z
-fBodyAccJerk-X
-fBodyAccJerk-Y
-fBodyAccJerk-Z
-fBodyGyro-X
-fBodyGyro-Y
-fBodyGyro-Z
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag

From each signal, the following variables were estimated:

mean(): Mean value
std(): Standard deviation

For each subject-activity combination, the average value of the mean() and std() variables across all observations
was calculated using the melt and dcast functions in the rshape2 package.

The dataset includes 67 variables: the id_activity variable and, for the mean() and std() variables for each of
the 33 measurements listed above, the average value across each subject-activity combination.
