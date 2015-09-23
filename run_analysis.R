
## Load feature column names
features <- read.table("./features.txt")[,2]
head(features)

## Load activity column names
activity_labels <- read.table("./activity_labels.txt")[,2]
head(activity_labels)

#### TEST Data ####

## Load x_test (feature data) & assign column names
xTest <- read.table("./X_test.txt")
names(xTest) = features
head(xTest)

# Load y_test (activity data) & assign column names
yTest <- read.table("./y_test.txt")
SubjectTest <- read.table("./subject_test.txt")

yTest[,2] = activity_labels[yTest[,1]]
names(yTest) = c("Activity_ID", "Activity_Label")
names(SubjectTest) = "subject"

head(yTest)

# Bind data
library(data.table)
Test_Data <- cbind(as.data.table(SubjectTest), yTest, xTest)
head(Test_Data)



#### TRAIN Data ####

## Load x_train (feature data) & assign column names
xTrain <- read.table("./X_train.txt")
names(xTrain) = features
head(xTrain)

## Load y_train (activity data) & assign column names
yTrain <- read.table("./y_train.txt")
SubjectTrain <- read.table("./subject_train.txt")

yTrain[,2] = activity_labels[yTrain[,1]]
names(yTrain) = c("Activity_ID", "Activity_Label")
names(SubjectTrain) = "subject"

head(SubjectTrain)

## Bind data
Train_Data <- cbind(as.data.table(SubjectTrain), yTrain, xTrain)
head(Train_Data)

##Bind test & training data
All_Data <- data.frame(rbind(Test_Data, Train_Data))

## Extract measurements only for mean & standard deviation for each measurement using "grep"
ExtractFeature <- grep("mean|std", features)
All_Data = All_Data[,ExtractFeature]
head(All_Data)

library(reshape2)

data_labels = setdiff(colnames(All_Data), c("subject", "Activity_ID", "Activity_Label"))
melt_data = melt(All_Data, 
                      c("subject", "Activity_ID", "Activity_Label"), 
                        measure.vars = data_labels)

# Apply mean function to dataset using dcast function
TidyData_wAverage   = dcast(melt_data, subject + Activity_Label ~ variable, mean)
head(TidyData_wAverage)

write.table(TidyData_wAverage, file = "./TidyData_wAverage.txt")
