==================================================================
Human Activity Recognition Using Smartphones
Tidy Dataset with averages for each subject and activity
==================================================================

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person
performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial
linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been
video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal,
which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body
acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a
filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating
variables from the time and frequency domain. See 'CodeBook.md' for more details. 

The following steps were used to create a tidy dataset from the UCI HAR Dataset:
================================================================================

NOTE: the R code requires that the dplyr and reshape2 packages are installed.

1) Read the X-test.txt, y-test.txt, subject_test.txt, X_train.txt, y_train.txt, subject_train.txt, features.txt,
and activity_labels.txt files from the UCI HAR dataset

2) Add descriptive variable names to all tables

3) Merge the test and training datasets, and add descriptive activity labels to each observation

4) Select only the mean and standard deviation for each measurement

5) Melt dataframe to create a long dataset with a row for each mean/standard deviation variable

6) Cast melted dataframe to create a new dataframe with the calculated average of each mean/standard deviation
variable for each subject-activity combination

7) Create a unique ID variable that combines the subject ID and activity name

8) Write final dataset to a .txt file


The dataset includes the following files:
=========================================

- 'README.txt'

- 'finaldataset.txt': a tidy dataset showing the average value of each measurement for each activity, by subject 

- 'CodeBook.md': a description of the variables in the dataset

- 'run_analysis.R': R code used to create finaldataset.txt from the UCI HAR Dataset


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition
on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient
Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or
their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
