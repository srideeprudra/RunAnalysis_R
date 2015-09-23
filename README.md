## **Working of the R script**

* The features & activity labels are read from the input files
*	The test & training dataset & labels are read and combined together (project requirement 3)
*	The headers are assigned to the respective columns (project requirement 4)
*	Then, the test & training data is appended (project requirement 1)
*	Only the measurements on the mean and standard deviation for each measurement (column) is extracted (project requirement 2)
*	Finally, a tidy data set with the average of each variable for each activity and each subject is created (project requirement 5)


## Code Book - Variable Description

* The first two fields are the subject/volunteer numbers & their respective activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) as captured through the experiment.

* The remaining variables are sensor signals from the accelerometer & gyroscope measured through various fields and other statistical measures estimated from the signal, as described in the "feature_info" text file from the input set.

  * subject
  * Activity_Label
  * tBodyAcc.mean...X
  * tBodyAcc.mean...Y
  * tBodyAcc.mean...Z
  * tBodyAcc.correlation...X.Y
  * tBodyAcc.correlation...X.Z
  * tBodyAcc.correlation...Y.Z
  * tGravityAcc.mean...X
  * tGravityAcc.mean...Y
  * tGravityAcc.mean...Z
  * tGravityAcc.correlation...X.Y     
  * tGravityAcc.correlation...X.Z
  * tGravityAcc.correlation...Y.Z     
  * tBodyAccJerk.mean...X
  * tBodyAccJerk.mean...Y             
  * tBodyAccJerk.mean...Z
  * tBodyAccJerk.correlation...X.Y    
  * tBodyAccJerk.correlation...X.Z
  * tBodyAccJerk.correlation...Y.Z    
  * tBodyGyro.mean...X
  * tBodyGyro.mean...Y                
  * tBodyGyro.mean...Z
  * tBodyGyro.correlation...X.Y       
  * tBodyGyro.correlation...X.Z
  * tBodyGyro.correlation...Y.Z       
  * tBodyGyroJerk.mean...X
  * tBodyGyroJerk.mean...Y            
  * tBodyGyroJerk.mean...Z
  * tBodyGyroJerk.correlation...X.Y   
  * tBodyGyroJerk.correlation...X.Z
  * tBodyAccMag.arCoeff..2            
  * tBodyAccMag.arCoeff..3
  * tGravityAccMag.arCoeff..2         
  * tGravityAccMag.arCoeff..3
  * tBodyAccJerkMag.arCoeff..2        
  * tBodyAccJerkMag.arCoeff..3
  * tBodyGyroMag.arCoeff..2           
  * tBodyGyroMag.arCoeff..3            
  * tBodyGyroJerkMag.arCoeff..2       
  * tBodyGyroJerkMag.arCoeff..3
  * tBodyGyroJerkMag.arCoeff..4       
  * fBodyAcc.mean...X
  * fBodyAcc.mean...Y                 
  * fBodyAcc.mean...Z
  * fBodyAcc.maxInds.X                
  * fBodyAcc.maxInds.Y
  * fBodyAcc.maxInds.Z                
  * fBodyAcc.bandsEnergy...49.64.2
  * fBodyAcc.bandsEnergy...1.24.2     
  * fBodyAcc.bandsEnergy...25.48.2
  * fBodyAccJerk.mean...X             
  * fBodyAccJerk.mean...Y
  * fBodyAccJerk.mean...Z             
  * fBodyAccJerk.maxInds.X
  * fBodyAccJerk.maxInds.Y            
  * fBodyAccJerk.maxInds.Z
  * fBodyAccJerk.bandsEnergy...49.64.2
  * fBodyAccJerk.bandsEnergy...1.24.2
  * fBodyAccJerk.bandsEnergy...25.48.2
  * fBodyGyro.mean...X
  * fBodyGyro.mean...Y                
  * fBodyGyro.mean...Z
  * fBodyGyro.maxInds.X               
  * fBodyGyro.maxInds.Y
  * fBodyGyro.maxInds.Z               
  * fBodyGyro.bandsEnergy...49.64.2
  * fBodyGyro.bandsEnergy...1.24.2    
  * fBodyAccMag.iqr..
  * fBodyAccMag.meanFreq..            
  * fBodyAccMag.skewness..
  * fBodyBodyAccJerkMag.iqr..         
  * fBodyBodyAccJerkMag.meanFreq..
  * fBodyBodyAccJerkMag.skewness..    
  * fBodyBodyGyroMag.iqr..
  * fBodyBodyGyroMag.meanFreq..       
  * fBodyBodyGyroMag.skewness..
  * fBodyBodyGyroJerkMag.iqr..
  * angle.X.gravityMean.
  * angle.Y.gravityMean. 
  * angle.Z.gravityMean.
