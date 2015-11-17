Code Book for finaldataset.txt
==============================

The finaldataset.txt dataset shows the average value of each measurement for each activity done by each subject.

id_activity is a unique identifier of the form x-activity, where x is the subject ID number and activity is the 
descriptive name of the activity being done by the subject when the measurements were taken.

This dataset includes 180 observations: one for each of the 30 subjects (numbered consecutively) performing each
of the following 6 activities:

1) WALKING

2) WALKING_UPSTAIRS

3) WALKING_DOWNSTAIRS

4) SITTING

5) STANDING

6) LAYING

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

1) tBodyAcc-X

2) tBodyAcc-Y

3) tBodyAcc-Z

4) tGravityAcc-X

5) tGravityAcc-Y

6) tGravityAcc-Z

7) tBodyAccJerk-X

8) tBodyAccJerk-Y

9) tBodyAccJerk-Z

10) tBodyGyro-X

11) tBodyGyro-Y

12) tBodyGyro-Z

13) tBodyGyroJerk-X

14) tBodyGyroJerk-Y

15) tBodyGyroJerk-Z

16) tBodyAccMag

17) tGravityAccMag

18) tBodyAccJerkMag

19) tBodyGyroMag

20) tBodyGyroJerkMag

21) fBodyAcc-X

22) fBodyAcc-Y

23) fBodyAcc-Z

24) fBodyAccJerk-X

25) fBodyAccJerk-Y

26) fBodyAccJerk-Z

27) fBodyGyro-X

28) fBodyGyro-Y

29) fBodyGyro-Z

30) fBodyAccMag

31) fBodyAccJerkMag

32) fBodyGyroMag

33) fBodyGyroJerkMag

From each signal, the following variables were estimated:

mean(): Mean value
std(): Standard deviation

For each subject-activity combination, the average value of the mean() and std() variables across all observations
was calculated using the melt and dcast functions in the rshape2 package.

The dataset includes 67 variables: the id_activity variable and, for the mean() and std() variables for each of
the 33 measurements listed above, the average value across each subject-activity combination.
