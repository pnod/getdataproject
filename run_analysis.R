########## STEP 0: LOAD THE DATA ##########
# This script assumes the unzipped files are already in the working directory
# This set of commands reads in all of the relevant data
features <- read.table("features.txt")
trainx <- read.table("./train/X_train.txt")
trainy <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
testx <- read.table("./test/X_test.txt")
testy <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

######### STEP 1: MERGE THE DATA INTO ONE DATASET ##########
# This set of commands labels the variables in the training and test sets, 
# then row-binds them together into the full dataset. 
names(trainx) <- features[,2]
names(testx) <- features[,2]
full <- rbind(trainx, testx)

# This set of commands then column-binds the activity and subject data to the full dataset
# Note that within the cbind function, the rbind function is used to attach the test data
# to the end of the train data for both the activity and subject data, maintaining ordering
full <- cbind(rbind(trainy, testy), rbind(subject_train, subject_test), full)
names(full)[1] <- "Activity"
names(full)[2] <- "Subject"

########## STEP 2: EXTRACT MEASUREMENTS ON MEAN AND STANDARD DEVIATION ONLY ##########
# The rest of the data manipulation uses the dplyr package, which I assume is installed.
# If not, you would need to use the install.packages function first.
# These commands load dplyr and then format the dataset to be used with dplyr
library(dplyr)
full <- tbl_df(full)

# Use the select function to extract the "Activity" and "Subject" variables, as well as
# variables with "mean()" and/or "std()" in their names (the backslashes are the escape
# character for the parentheses)
subfull <- select(full, Activity, Subject, contains("mean\\()"), contains("std\\()"), -contains("angle"))

########## STEP 3: ASSIGN DESCRIPTIVE ACTIVITY NAMES ##########
# Replace integer values in the "Activity" variable with text descriptions
subfull$Activity[subfull$Activity==1] <- "Walking"
subfull$Activity[subfull$Activity==2] <- "Walking upstairs"
subfull$Activity[subfull$Activity==3] <- "Walking downstairs"
subfull$Activity[subfull$Activity==4] <- "Sitting"
subfull$Activity[subfull$Activity==5] <- "Standing"
subfull$Activity[subfull$Activity==6] <- "Laying"

########## STEP 4: MAKE VARIABLE NAMES MORE DESCRIPTIVE ########## 
# Use the gsub function to remove parentheses, change "BodyBody" to "Body", and change the 
# "t" and "f" at the beginning of variable names to "Time" and "Freq", respectively.
# Note that I am choosing to use uppercase letters in variable names and am not expanding
# abbreviations, in order to try and improve the readability while also maintaining
# relatively short variable names.
names(subfull) <- gsub("\\()", "", names(subfull))
names(subfull) <- gsub("BodyBody", "Body", names(subfull))
names(subfull) <- gsub("^t", "Time", names(subfull))
names(subfull) <- gsub("^f", "Freq", names(subfull))

########## STEP 5: CREATE NEW DATASET AND SAVE FOR SUBMISSION ########## 
# Group data by activity and subject, then calculate the mean for each combination of 
# activity and subject. Save the data to "tidy.txt". I am choosing to maintain the dataset
# in wide format rather than using something like a function in the tidyr package to convert
# it to a narrow format.
subfullgrouped <- group_by(subfull, Activity, Subject)
tidy <- summarise_each(subfullgrouped, funs(mean))
write.table(tidy, file="tidy.txt", row.names=FALSE)