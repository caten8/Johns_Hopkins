CodeBook
--------

Variables, data, and transformations performed to clean up the data are detailed below:

The first two variables are "activity" and "subject" followed by 66 measurement variables.

 - activity
 - subject
 - tbodyacc-mean-x
 - tbodyacc-mean-y
 - tbodyacc-mean-z
 - tbodyacc-std-x
 - tbodyacc-std-y
 - tbodyacc-std-z
 - tgravityacc-mean-x
 - tgravityacc-mean-y
 - tgravityacc-mean-z
 - tgravityacc-std-x
 - tgravityacc-std-y
 - tgravityacc-std-z
 - tbodyaccjerk-mean-x
 - tbodyaccjerk-mean-y
 - tbodyaccjerk-mean-z
 - tbodyaccjerk-std-x
 - tbodyaccjerk-std-y
 - tbodyaccjerk-std-z
 - tbodygyro-mean-x
 - tbodygyro-mean-y
 - tbodygyro-mean-z
 - tbodygyro-std-x
 - tbodygyro-std-y
 - tbodygyro-std-z
 - tbodygyrojerk-mean-x
 - tbodygyrojerk-mean-y
 - tbodygyrojerk-mean-z
 - tbodygyrojerk-std-x
 - tbodygyrojerk-std-y
 - tbodygyrojerk-std-z
 - tbodyaccmag-mean
 - tbodyaccmag-std
 - tgravityaccmag-mean
 - tgravityaccmag-std
 - tbodyaccjerkmag-mean
 - tbodyaccjerkmag-std
 - tbodygyromag-mean
 - tbodygyromag-std
 - tbodygyrojerkmag-mean
 - tbodygyrojerkmag-std
 - fbodyacc-mean-x
 - fbodyacc-mean-y
 - fbodyacc-mean-z
 - fbodyacc-std-x
 - fbodyacc-std-y
 - fbodyaccjerk-mean-x
 - fbodyaccjerk-mean-y
 - fbodyaccjerk-mean-z
 - fbodyaccjerk-std-x
 - fbodyaccjerk-std-y
 - fbodyaccjerk-std-z
 - fbodygyro-mean-x
 - fbodygyro-mean-y
 - fbodygyro-mean-z
 - fbodygyro-std-x
 - fbodygyro-std-y
 - fbodygyro-std-z
 - fbodyaccmag-mean
 - fbodyaccmag-std
 - fbodybodyaccjerkmag-mean
 - fbodybodyaccjerkmag-std
 - fbodybodygyromag-mean
 - fbodybodygyromag-std
 - fbodybodygyrojerkmag-mean
 - fbodybodygyrojerkmag-std" 

Excluded are variables not measuring mean or standard deviation. The others come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals was calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Variable names were altered by converting mixed case to lower case. Pipes
and spaces were also removed.

Long form table includes 10299 observations of 68 variables.


