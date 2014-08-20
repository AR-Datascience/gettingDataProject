## run_analysis.R script

## load data into R
## data in the main directory
activity_labels<-read.table("activity_labels.txt")
features<-read.table("features.txt")

## change working directory to "train" directory
setwd("train")

## read data files in directory "train"
X_train <- read.table("X_train.txt")
Y_train <- read.table("Y_train.txt")
subject_train<-read.table("subject_train.txt")

## change working directory to "test" directory
setwd("../test")

## read data files in directory "test"
subject_test<-read.table("subject_test.txt")
Y_test <- read.table("Y_test.txt")
X_test <- read.table("X_test.txt")

## checking the dimensions of the datasets, it turns out that the datasets in the train and in the test 
## directories have the same dimensions. From the readme description we understand that 
## subject_test, X_test and Y_test are data from one measurement, therefore we merge the three datasets as follows:


## in this way we obtain a dataset for the test set which consists of measurements related to the test subjects  (subject_test)
## performing an activity (Y_test) and measured over the set of a given feature (X_test)

s_test<-cbind(subject_test,Y_test)
test_set<-cbind(s_test,X_test)

## same for the train set
s_train<-cbind(subject_train,Y_train)
train_set<-cbind(s_train,X_train)

## next we combine the two sets into a single data set
data_set<-rbind(test_set,train_set)

## next thing is to give meaningful names to the activities which are currently represented by numbers.
## names of the activities are contained in the file activity_labels.txt which has been read into the dataframe activity_labelso

## first we change the class of the variable as factor, then we use the "revalue" function of the plyr package to change the value of the factors levels according to the mapping defined in activity_labels.txt

data_set$Activity <- as.factor(data_set2$Activity)
revalue(data_set$Activity, c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIR", "4"="SITTING", "5"="STANDING", "6"="LAYING"))







