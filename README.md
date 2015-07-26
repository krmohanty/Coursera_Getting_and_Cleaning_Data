# Getting and cleaning data

For creating a tidy data set of wearable computing data originally from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files in this repo
* README.md 
* CodeBook.md -- codebook describing variables, the data and transformations
* run_analysis.R -- actual R code

## run_analysis.R goals
You should create one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

It should run in a folder of the Samsung data (the zip had this folder: UCI HAR Dataset)
The script assumes it has in it's working directory the following files and folders:
* activity_labels.txt
* features.txt
* test/
* train/

The output is created in working directory with the name of tidy2.txt

The code follows differnt flow, compared to the steps in the instructions, but outputs all the steps correctly.

## run_analysis.R walkthrough
It follows the goals step by step.

* 1 (step 2 in the question):
  * Read the activity labels and features datasets.
  * Select a subset of features as per the requirement and also rename variables with convinient names

* 2 (step 4 in the question):
  * Read training and test datasets. Suset the columns which are required and rename the columns with convinient names.

* 3 (step 1 in the question):
  * Merge training and test datasets thus formed..

* 4 (step 3 in the question):
  * Merge Activity_id and activity_lable
  
* Step 5:
  * Create a summarized tidy data set with means of all variables by subject and activity_label. It's done by `aggregate()` function
  
* Final step:
  * Write the new tidy set into a text file called tidy_data_mean.txt, formatted similarly to the original files.
