#Codebook#
##Human activity recognition using smartphones##

Dataset made available by:

>Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
>Smartlab - Non Linear Complex Systems Laboratory
>DITEN - Universit<E0> degli Studi di Genova.
>Via Opera Pia 11A, I-16145, Genoa, Italy.
>activityrecognition@smartlab.ws
>www.smartlab.ws

>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass 
>Hardware-Friendly Support Vector Machine. 
>International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Please read the README.txt provided with the dataset for information about how the dataset was constructed.

This document provides a description of the variables in the final tidy dataset resulting from the processing requested by the project in the __Coursera__ course
 __Getting and cleaning data__.

__Subject__ (numeric)

Id identifying the subject for which measurements were taken

__Activity__ (factor) - Values: 

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

Activities being carried out by individuals identified by "Subject" and measured with smartphones.


*Acc*: identifies accelerometer measured data

*Gyro*: identifies gyroscope measured data

(X-Y-Z): indicates three variables for measures taken on the X, Y and Z axis

MEAN: indicates mean values for the identified measure

SD: indicates standard deviation values for the identified measures

__Time-related measures__

TimeBodyAcc-MEAN-(X-Y-Z)
TimeGravityAcc-MEAN-(X-Y-Z)
TimeBodyAccJerk-MEAN-(X-Y-Z)
TimeBodyGyro-MEAN-(X-Y-Z)
TimeBodyGyroJerk-MEAN-(X-Y-Z)
TimeBodyAccMag-MEAN
TimeGravityAccMag-MEAN
TimeBodyAccJerkMag-MEAN
TimeBodyGyroMag-MEAN
TimeBodyGyroJerkMag-MEAN

TimeBodyAcc-SD-(X-Y-Z)
TimeGravityAcc-SD-(X-Y-Z)
TimeBodyAccJerk-SD-(X-Y-Z)
TimeBodyGyro-SD-(X-Y-Z)
TimeBodyGyroJerk-SD-(X-Y-Z)
TimeBodyAccMag-SD
TimeGravityAccMag-SD
TimeBodyAccJerkMag-SD
TimeBodyGyroMag-SD
TimeBodyGyroJerkMag-SD

__Frequency-related measures__

FrequencyBodyAcc-MEAN-(X-Y-Z)
FrequencyBodyAcc-MEANFreq-(X-Y-Z)
FrequencyBodyAccJerk-MEAN-(X-Y-Z)
FrequencyBodyAccJerk-MEANFreq-(X-Y-Z)
FrequencyBodyGyro-MEAN-(X-Y-Z)
FrequencyBodyGyro-MEANFreq-(X-Y-Z)
FrequencyBodyAccMag-MEAN
FrequencyBodyAccMag-MEANFreq
FrequencyBodyBodyAccJerkMag-MEAN
FrequencyBodyBodyAccJerkMag-MEANFreq
FrequencyBodyBodyGyroMag-MEAN
FrequencyBodyBodyGyroMag-MEANFreq
FrequencyBodyBodyGyroJerkMag-MEAN
FrequencyBodyBodyGyroJerkMag-MEANFreq
FrequencyBodyAcc-SD-(X-Y-Z)
FrequencyBodyAccJerk-SD-(X-Y-Z)
FrequencyBodyGyro-SD-(X-Y-Z)
FrequencyBodyAccMag-SD
FrequencyBodyBodyAccJerkMag-SD


## How the data provided in the dataset were processed to obtain the final tidy data dataset ##
The steps executed on the given dataset to clean-up the data are described in detail step-by-step with comments in the script file run_analysis.R.
They are summarized below:


