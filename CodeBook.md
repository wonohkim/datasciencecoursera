CodeBook for Tidy Data
===================
## Coursera Getting and Cleaning Data Project 2
### By Wonoh Kim, 11/23/2014

## Data Source

The experiments data can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The detail description of the data can be found at:
http://archive.icFrom the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.s.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Procedure

From the experiment data set, a second, independent tidy data set with the average of each variable for each activity and each subject are created.

To create the tidy data, execute R code run_analysis.R in either R or RStudio.
The result data set tidy_data.txt was created by RStudio 3.1.1.

## List of variables

"activity"                          "subject"                          
"tBodyAccMeanX"                     "tBodyAccMeanY"                    
"tBodyAccMeanZ"                     "tBodyAccStdX"                     
"tBodyAccStdY"                      "tBodyAccStdZ"                     
"tGravityAccMeanX"                  "tGravityAccMeanY"                 
"tGravityAccMeanZ"                  "tGravityAccStdX"                  
"tGravityAccStdY"                   "tGravityAccStdZ"                  
"tBodyAccJerkMeanX"                 "tBodyAccJerkMeanY"                
"tBodyAccJerkMeanZ"                 "tBodyAccJerkStdX"                 
"tBodyAccJerkStdY"                  "tBodyAccJerkStdZ"                 
"tBodyGyroMeanX"                    "tBodyGyroMeanY"                   
"tBodyGyroMeanZ"                    "tBodyGyroStdX"                    
"tBodyGyroStdY"                     "tBodyGyroStdZ"                    
"tBodyGyroJerkMeanX"                "tBodyGyroJerkMeanY"               
"tBodyGyroJerkMeanZ"                "tBodyGyroJerkStdX"                
"tBodyGyroJerkStdY"                 "tBodyGyroJerkStdZ"                
"tBodyAccMagMean"                   "tBodyAccMagStd"                   
"tGravityAccMagMean"                "tGravityAccMagStd"                
"tBodyAccJerkMagMean"               "tBodyAccJerkMagStd"               
"tBodyGyroMagMean"                  "tBodyGyroMagStd"                  
"tBodyGyroJerkMagMean"              "tBodyGyroJerkMagStd"              
"fBodyAccMeanX"                     "fBodyAccMeanY"                    
"fBodyAccMeanZ"                     "fBodyAccStdX"                     
"fBodyAccStdY"                      "fBodyAccStdZ"                     
"fBodyAccMeanFreqX"                 "fBodyAccMeanFreqY"                
"fBodyAccMeanFreqZ"                 "fBodyAccJerkMeanX"                
"fBodyAccJerkMeanY"                 "fBodyAccJerkMeanZ"                
"fBodyAccJerkStdX"                  "fBodyAccJerkStdY"                 
"fBodyAccJerkStdZ"                  "fBodyAccJerkMeanFreqX"            
"fBodyAccJerkMeanFreqY"             "fBodyAccJerkMeanFreqZ"            
"fBodyGyroMeanX"                    "fBodyGyroMeanY"                   
"fBodyGyroMeanZ"                    "fBodyGyroStdX"                    
"fBodyGyroStdY"                     "fBodyGyroStdZ"                    
"fBodyGyroMeanFreqX"                "fBodyGyroMeanFreqY"               
"fBodyGyroMeanFreqZ"                "fBodyAccMagMean"                  
"fBodyAccMagStd"                    "fBodyAccMagMeanFreq"              
"fBodyBodyAccJerkMagMean"           "fBodyBodyAccJerkMagStd"           
"fBodyBodyAccJerkMagMeanFreq"       "fBodyBodyGyroMagMean"             
"fBodyBodyGyroMagStd"               "fBodyBodyGyroMagMeanFreq"         
"fBodyBodyGyroJerkMagMean"          "fBodyBodyGyroJerkMagStd"          
"fBodyBodyGyroJerkMagMeanFreq"      "angletBodyAccMeangravity"         
"angletBodyAccJerkMeangravityMean"  "angletBodyGyroMeangravityMean"    
"angletBodyGyroJerkMeangravityMean" "angleXgravityMean"                
"angleYgravityMean"                 "angleZgravityMean"                
"activity"                          "subject"    

All the variable names are self explanatory and detail information can be found in the original data set.
Some acronyms are:

- Acc - Acceleration
- Mag - Magnitude
- Freq - Frequency
- Std - Standard Deviation

