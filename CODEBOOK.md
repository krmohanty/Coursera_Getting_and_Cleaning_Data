Codebook for wearable computing dataset
==================================

## Variables
````
subject                    
    Subject number
                           1..30 .Unique identifier assigned to each subject

label                      1..6 . Unique identifier assigned to each activity.
    Acitivity label
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"

tbodyacc_mean_x              12
    Described below

tbodyacc_mean_y              12
    Described below

tbody_accmean_z              12
    Described below

tbody_accstd_x               12
    Described below

tbodyacc_std_y               12
    Described below

tbodyacc_std_z               12
    Described below

tgravityacc_mean_x           12
    Described below

tgravityacc_mean_y           12
    Described below

tgravityacc_mean_z           12
    Described below

tgravityacc_std_x            12
    Described below

tgravityacc_std_y            12
    Described below

tgravityacc_std_z            12
    Described below

tbodyaccjerk_mean_x          12
    Described below

tbodyaccjerk_mean_y          12
    Described below

tbodyaccjerk_mean_z          12
    Described below

tbodyaccjerk_std_x           12
    Described below

tbodyaccjerk_std_y           12
    Described below

tbodyaccjerk_std_z           12
    Described below

tbodygyro_mean_x             12
    Described below

tbodygyro_mean_y             12
    Described below

tbodygyro_mean_z             12
    Described below

tbodygyro_std_x              12
    Described below

tbodygyro_std_y              12
    Described below

tbodygyro_std_z              12
    Described below

tbodygyrojerk_mean_x         12
    Described below

tbodygyrojerk_mean_y         12
    Described below

tbodygyrojerk_mean_z         12
    Described below

tbodygyrojerk_std_x          12
    Described below

tbodygyrojerk_std_y          12
    Described below

tbodygyrojerk_std_z          12
    Described below

tbodyaccmag_mean            12
    Described below

tbodyaccmag_std             12
    Described below

tgravityaccmag_mean         12
    Described below

tgravityaccmag_std          12
    Described below

tbodyaccjerkmag_mean        12
    Described below

tbodyaccjerkmag_std         12
    Described below

tbodygyromag_mean           12
    Described below

tbodygyromag_std            12
    Described below

tbodygyrojerkmag_mean       12
    Described below

tbodygyrojerkmag_std        12
    Described below

fbodyacc_mean_x              12
    Described below

fbodyacc_mean_y              12
    Described below

fbodyacc_mean_z              12
    Described below

fbodyacc_std_x               12
    Described below

fbodyacc_std_y               12
    Described below

fbodyacc_std_z               12
    Described below

fbodyaccjerk_mean_x          12
    Described below

fbodyaccjerk_mean_y          12
    Described below

fbodyaccjerk_mean_z          12
    Described below

fbodyaccjerk_std_x           12
    Described below

fbodyaccjerk_std_y           12
    Described below

fbodyaccjerk_std_z           12
    Described below

fbodygyro_mean_x             12
    Described below

fbodygyro_mean_y             12
    Described below

fbodygyro_mean_z             12
    Described below

fbodygyro_std_x              12
    Described below

fbodygyro_std_y              12
    Described below

fbodygyro_std_z              12
    Described below

fbodyaccmag_mean            12
    Described below

fbodyaccmag_std             12
    Described below

fbodybodyaccjerkmag_mean    12
    Described below

fbodybodyaccjerkmag_std     12
    Described below

fbodybodygyromag_mean       12
    Described below

fbodybodygyromag_std        12
    Described below

fbodybodygyrojerkmag_mean   12
    Described below

fbodybodygyrojerkmag_std    12
    Described below

````

## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag

fbodygyromag

fbodygyrojerkmag

The set of variables that were estimated from these signals are: 

mean: Mean value

std: Standard deviation

## Transformation

All the values are means, aggregated over 30 subjects and 6 activities, hence the resulting dataset is 180 rows by 68 columns.
