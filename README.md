# README #
explaining how to use the script file run_analysis.R to process the UCI HAR dataset
and obtain the file tidy_dataset.txt processed following the instructions given 
for the project

Download the data from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and unpack the zip file in the current directory
a directory named "UCI HAR Dataset" will be created. This must be the current working directory when you launch R or R studio

The instruction in the run_analysis.R file will upload the necessary files for the analysis.

The following files are used as input data:

from the current working directory
- activity_labels.txt
- features.txt
- features_info.txt
- files
- test
- train

from the ./test* directory:
- X_test.txt
- subject_test.txt
- y_test.txt

from the  ./train* directiry:
- X_train.txt
- subject_train.txt
- y_train.txt

Execute the run_analysis.R script in R or R studio setting as current working directory the directory where you placed the "UCI HAR Dataset" folder.

The script will produce the file tidy_dataset.txt in the current working directory which will contain the dataset processed
according to the instructions given for the project, i.e.:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
