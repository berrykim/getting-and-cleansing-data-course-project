---
title: "README"
author: "Berry Kim"
date: "Friday, June 20, 2014"
output: html_document
---

## Human Activity Recognition Using Smartphones Dataset

The average of each feature for 6 activities and 30 subjects collected from a smartphone (Samsung Galaxy S II).


### Original data

```
Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit?degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

```

- link: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


### How to process

1. Download, unzip andread the data

- download data link: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

2. Merges the training and the test sets to create one data set.

- Merge subject_test.txt, activity_test.txt, and testData.txt into one 2947*563 set.
- Merge subject_train.txt, activity_train.txt, and trainData.txt into one 7352*563 dataset.
- Merge these two datasets into one 10299*563 dataset whose columns include subject's ID, activity ID, and 561 features.

3. Extracts only the measurements on the mean and standard deviation for each measurement.

4. Uses descriptive activity names to name the activities in the data set.

- Match with descriptions in activity_labels.txt.

5. Appropriately labels the data set with descriptive variable names. 

- Match with descriptions in features.txt.

6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

- For 30 subjects * 6 activities, 33 average features are arranged.
- Create newtidyData.txt



