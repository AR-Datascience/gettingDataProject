## run_analysis.R script

################ 1. MERGE TRAINING AND TESTING DATA 
## load data into R
## the folder containing the data is assumed to be in the current working directory in R (see README.md) 
setwd("./UCI HAR Dataset")

## read iin R the datasets in the current working directory
activity_labels<-read.table("activity_labels.txt")
features<-read.table("features.txt")

## change working directory to "train" directory
setwd("train")

## read in R data files in directory "train"
X_train <- read.table("X_train.txt")
Y_train <- read.table("Y_train.txt")
subject_train<-read.table("subject_train.txt")

## change working directory to "test" directory
setwd("../test")

## read in R data files in directory "test"
subject_test<-read.table("subject_test.txt")
Y_test <- read.table("Y_test.txt")
X_test <- read.table("X_test.txt")

## back to the home directory where the output tidy_dataset.txt file will be stored
setwd("..")

## checking the dimensions of the datasets, it turns out that the datasets in the train and in the test 
## directories have the same dimensions. From the readme description we understand that 
## subject_test, X_test and Y_test are data from one measurement, therefore we merge the three datasets as follows:

s_test<-cbind(subject_test,Y_test)
test_set<-cbind(s_test,X_test)

## in this way we obtain a dataset for the test set which consists of measurements related to the test subjects (subject_test)
## performing an activity (Y_test) and measured over the set of a given feature (X_test)

## same for the train set
s_train<-cbind(subject_train,Y_train)
train_set<-cbind(s_train,X_train)

## next we combine the two sets into a single data set
data_set<-rbind(test_set,train_set)

################## 3. DESCRIPTIVE NAMES TO NAME ACTIVITIES IN THE DATA SETS
## next thing is to give meaningful names to the activities which are currently represented by numbers.
## names of the activities are contained in the file activity_labels.txt which has been 
## read into the dataframe activity_labelso

## first we change the class of the variable as factor, then we use the "revalue" function
## of the plyr package to change the value of the factors levels according to the mapping defined in activity_labels.txt

library(plyr)
library(reshape2)

colnames(data_set)[1] <- "Subject" 
colnames(data_set)[2] <- "Activity"

data_set$Activity <- as.factor(data_set$Activity)
data_set$Activity <- revalue(data_set$Activity, c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS", "4"="SITTING", "5"="STANDING", "6"="LAYING"))


################# 4. LABEL THE DATASET WITH DESCRIPTIVE VARIABLE NAMES
## now we need to change the name of the variables using our features dataset. 
## having added at thebeginning to our dataset two new columns (i.e. subject and activity), we need to add
## the corresponding label to the features dataset so that the dimension of this vector is the same as the
## nimber of variables of our dataset.

features <-as.character(features$V2)
features <- append(features,"Subject",0)
features <- append(features,"Activity",1)

names(data_set)<-features

################ 2. EXTRACT ONLY MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION
## Now we need to extract the measurements on the mean and standard deviation for each measurement
## we do this by selecting the columns whose name contains the text "mean" and "std" using the grep function
## by creating a new vector with the number of these columns plus the first two columns, i.e. subject and activity

mean_cols<-grep ("mean",names(data_set))
std_cols<-grep("std",names(data_set))
subset_cols<-c(1,2,mean_cols,std_cols)
data_set_new <- data_set[,subset_cols]


################# 4. LABEL THE DATASET WITH DESCRIPTIVE VARIABLE NAMES
################# further improving on variable names in the new dataset
## we use gsub to replace substrings of the variable names with more descriptive strings

names(data_set_new) <-gsub("tBody","TimeBody",names(data_set_new))
names(data_set_new) <-gsub("fBody","FrequencyBody",names(data_set_new))
names(data_set_new) <-gsub("fGravity","FrequencyGravity",names(data_set_new))
names(data_set_new) <-gsub("tGravity","TimeGravity",names(data_set_new))

names(data_set_new) <-gsub("\\(\\)","",names(data_set_new))
names(data_set_new) <-gsub("std","SD",names(data_set_new))
names(data_set_new) <-gsub("mean","MEAN",names(data_set_new))

################# 5. CREATE A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF
#################  each variable for each activity and each subject
##  in order to do this we use the aggregate function using as variable values the variables whose
##  names are in the data structure var, and as id variables, the variables in id

id<-c(names(data_set_new)[2],names(data_set_new)[1])
var<-c(names(data_set_new)[3:length(names(data_set_new))])

tidy_data <-aggregate(data_set_new[var], by=data_set_new[id], FUN=mean)

## swap the first two columns so that we get SUbject first
tidy_data <- tidy_data[,c(2,1,3:length(var))]


################# 6. SAVE THE TIDY DATASET AS A FILE
## finally we create the tidy dataset with the following command

write.table(tidy_data,file="./tidy_dataset.txt",row.name=FALSE)





