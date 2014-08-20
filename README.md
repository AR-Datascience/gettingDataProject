# README #
## explaining how the given datasets were processed to obtain tidy data ##

The following files  were used as input data:

- ./
- activity_labels.txt
- features.txt
- features_info.txt
- files
- test
- train

in the *./test* directory:
- Inertial Signals
- X_test.txt
- subject_test.txt
- y_test.txt

in the *./test/Inertial Signals* directory:
- body_acc_x_test.txt
- body_acc_y_test.txt
- body_acc_z_test.txt
- body_gyro_x_test.txt
- body_gyro_y_test.txt
- body_gyro_z_test.txt
- total_acc_x_test.txt
- total_acc_y_test.txt
- total_acc_z_test.txt

in the * ./train* directiry:
- Inertial Signals
- X_train.txt
- subject_train.txt
- y_train.txt

in the * ./train/Inertial Signals* directory:
- body_acc_x_train.txt
- body_acc_y_train.txt
- body_acc_z_train.txt
- body_gyro_x_train.txt
- body_gyro_y_train.txt
- body_gyro_z_train.txt
- total_acc_x_train.txt
- total_acc_y_train.txt
- total_acc_z_train.txt

The steps followed are contained in the script file: run_analysis.R (as requested).
Basically, the steps are the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
