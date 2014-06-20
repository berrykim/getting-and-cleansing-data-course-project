---
title: "codeBook"
author: "Berry Kim"
date: "Friday, June 20, 2014"
output: html_document
---

### STURCTURE

```
str(newtidyData)
'data.frame':        180 obs. of  35 variables:
 $ subject                    : int  1 2 3 4 5 6 7 8 9 10 ...
 $ activity                   : int  1 1 1 1 1 1 1 1 1 1 ...
 $ tBodyAcc-mean()-X          : num  0.277 0.276 0.276 0.279 0.278 ...
 $ tBodyAcc-mean()-Y          : num  -0.0174 -0.0186 -0.0172 -0.0148 -0.0173 ...
 $ tBodyAcc-mean()-Z          : num  -0.111 -0.106 -0.113 -0.111 -0.108 ...
 $ tGravityAcc-mean()-X       : num  0.935 0.913 0.937 0.964 0.973 ...
 $ tGravityAcc-mean()-Y       : num  -0.2822 -0.3466 -0.262 -0.0859 -0.1004 ...
 $ tGravityAcc-mean()-Z       : num  -0.0681 0.08473 -0.13811 0.12776 0.00248 ...
 $ tBodyAccJerk-mean()-X      : num  0.074 0.0618 0.0815 0.0784 0.0846 ...
 $ tBodyAccJerk-mean()-Y      : num  0.02827 0.01825 0.01006 0.00296 -0.01632 ...
 $ tBodyAccJerk-mean()-Z      : num  -4.17e-03 7.90e-03 -5.62e-03 -7.68e-04 8.32e-05 ...
 $ tBodyGyro-mean()-X         : num  -0.0418 -0.053 -0.0256 -0.0318 -0.0489 ...
 $ tBodyGyro-mean()-Y         : num  -0.0695 -0.0482 -0.0779 -0.0727 -0.069 ...
 $ tBodyGyro-mean()-Z         : num  0.0849 0.0828 0.0813 0.0806 0.0815 ...
 $ tBodyGyroJerk-mean()-X     : num  -0.09 -0.0819 -0.0952 -0.1153 -0.0888 ...
 $ tBodyGyroJerk-mean()-Y     : num  -0.0398 -0.0538 -0.0388 -0.0393 -0.045 ...
 $ tBodyGyroJerk-mean()-Z     : num  -0.0461 -0.0515 -0.0504 -0.0551 -0.0483 ...
 $ tBodyAccMag-mean()         : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
 $ tGravityAccMag-mean()      : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
 $ tBodyAccJerkMag-mean()     : num  -0.141 -0.281 -0.28 -0.367 -0.288 ...
 $ tBodyGyroMag-mean()        : num  -0.161 -0.447 -0.466 -0.498 -0.356 ...
 $ tBodyGyroJerkMag-mean()    : num  -0.299 -0.548 -0.566 -0.681 -0.445 ...
 $ fBodyAcc-mean()-X          : num  -0.203 -0.346 -0.317 -0.427 -0.288 ...
 $ fBodyAcc-mean()-Y          : num  0.08971 -0.0219 -0.0813 -0.1494 0.00946 ...
 $ fBodyAcc-mean()-Z          : num  -0.332 -0.454 -0.412 -0.631 -0.49 ...
 $ fBodyAccJerk-mean()-X      : num  -0.171 -0.305 -0.305 -0.359 -0.345 ...
 $ fBodyAccJerk-mean()-Y      : num  -0.0352 -0.0788 -0.1405 -0.2796 -0.1811 ...
 $ fBodyAccJerk-mean()-Z      : num  -0.469 -0.555 -0.514 -0.729 -0.59 ...
 $ fBodyGyro-mean()-X         : num  -0.339 -0.43 -0.438 -0.373 -0.373 ...
 $ fBodyGyro-mean()-Y         : num  -0.103 -0.555 -0.562 -0.688 -0.514 ...
 $ fBodyGyro-mean()-Z         : num  -0.256 -0.397 -0.418 -0.601 -0.213 ...
 $ fBodyAccMag-mean()         : num  -0.129 -0.324 -0.29 -0.451 -0.305 ...
 $ fBodyBodyAccJerkMag-mean() : num  -0.0571 -0.1691 -0.1868 -0.3186 -0.2695 ...
 $ fBodyBodyGyroMag-mean()    : num  -0.199 -0.531 -0.57 -0.609 -0.484 ...
 $ fBodyBodyGyroJerkMag-mean(): num  -0.319 -0.583 -0.608 -0.724 -0.548 ...
```

--------------

### FEATURE SELECTION

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


**Features used in this dataset are ALL _average_ of each variable for each activity and each subject**


### VARIABLES

 [1] "subject"
 
 - Its range is from 1 to 30.
 - Each row identifies the subject who performed the activity for each window sample. 
 
 [2] "activity" 
 
- Its range is from 1 to 6.
-   1            WALKING
  2   WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4            SITTING
  5           STANDING
  6             LAYING

 [3]~[35] "features"
 
- Features are normalized and bounded within [-1,1].

 [3] "tBodyAcc-mean()-X"          
 [4] "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"          
 [6] "tGravityAcc-mean()-X"       
 [7] "tGravityAcc-mean()-Y"       
 [8] "tGravityAcc-mean()-Z"       
 [9] "tBodyAccJerk-mean()-X"      
[10] "tBodyAccJerk-mean()-Y"      
[11] "tBodyAccJerk-mean()-Z"      
[12] "tBodyGyro-mean()-X"         
[13] "tBodyGyro-mean()-Y"         
[14] "tBodyGyro-mean()-Z"         
[15] "tBodyGyroJerk-mean()-X"     
[16] "tBodyGyroJerk-mean()-Y"     
[17] "tBodyGyroJerk-mean()-Z"     
[18] "tBodyAccMag-mean()"         
[19] "tGravityAccMag-mean()"      
[20] "tBodyAccJerkMag-mean()"     
[21] "tBodyGyroMag-mean()"        
[22] "tBodyGyroJerkMag-mean()"    
[23] "fBodyAcc-mean()-X"          
[24] "fBodyAcc-mean()-Y"          
[25] "fBodyAcc-mean()-Z"          
[26] "fBodyAccJerk-mean()-X"      
[27] "fBodyAccJerk-mean()-Y"      
[28] "fBodyAccJerk-mean()-Z"      
[29] "fBodyGyro-mean()-X"         
[30] "fBodyGyro-mean()-Y"         
[31] "fBodyGyro-mean()-Z"         
[32] "fBodyAccMag-mean()"         
[33] "fBodyBodyAccJerkMag-mean()" 
[34] "fBodyBodyGyroMag-mean()"    
[35] "fBodyBodyGyroJerkMag-mean()"
 


