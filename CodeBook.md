CodeBook
========

Variables, data, and transformations performed to clean up the data are detailed below:

The first two variables are "activity" and "subject" followed by 66 measurement variables.

 [1] "activity"                  "subject"                   "tbodyacc-mean-x"          
 [4] "tbodyacc-mean-y"           "tbodyacc-mean-z"           "tbodyacc-std-x"           
 [7] "tbodyacc-std-y"            "tbodyacc-std-z"            "tgravityacc-mean-x"       
[10] "tgravityacc-mean-y"        "tgravityacc-mean-z"        "tgravityacc-std-x"        
[13] "tgravityacc-std-y"         "tgravityacc-std-z"         "tbodyaccjerk-mean-x"      
[16] "tbodyaccjerk-mean-y"       "tbodyaccjerk-mean-z"       "tbodyaccjerk-std-x"       
[19] "tbodyaccjerk-std-y"        "tbodyaccjerk-std-z"        "tbodygyro-mean-x"         
[22] "tbodygyro-mean-y"          "tbodygyro-mean-z"          "tbodygyro-std-x"          
[25] "tbodygyro-std-y"           "tbodygyro-std-z"           "tbodygyrojerk-mean-x"     
[28] "tbodygyrojerk-mean-y"      "tbodygyrojerk-mean-z"      "tbodygyrojerk-std-x"      
[31] "tbodygyrojerk-std-y"       "tbodygyrojerk-std-z"       "tbodyaccmag-mean"         
[34] "tbodyaccmag-std"           "tgravityaccmag-mean"       "tgravityaccmag-std"       
[37] "tbodyaccjerkmag-mean"      "tbodyaccjerkmag-std"       "tbodygyromag-mean"        
[40] "tbodygyromag-std"          "tbodygyrojerkmag-mean"     "tbodygyrojerkmag-std"     
[43] "fbodyacc-mean-x"           "fbodyacc-mean-y"           "fbodyacc-mean-z"          
[46] "fbodyacc-std-x"            "fbodyacc-std-y"            "fbodyacc-std-z"           
[49] "fbodyaccjerk-mean-x"       "fbodyaccjerk-mean-y"       "fbodyaccjerk-mean-z"      
[52] "fbodyaccjerk-std-x"        "fbodyaccjerk-std-y"        "fbodyaccjerk-std-z"       
[55] "fbodygyro-mean-x"          "fbodygyro-mean-y"          "fbodygyro-mean-z"         
[58] "fbodygyro-std-x"           "fbodygyro-std-y"           "fbodygyro-std-z"          
[61] "fbodyaccmag-mean"          "fbodyaccmag-std"           "fbodybodyaccjerkmag-mean" 
[64] "fbodybodyaccjerkmag-std"   "fbodybodygyromag-mean"     "fbodybodygyromag-std"     
[67] "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std" 

Excluded are variables not measuring mean or standard deviation. The others come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals was calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

=======================================================================

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

=======================================================================

Variable names were altered by converting mixed case to lower case. Pipes
and spaces were also removed.

Long form table includes 10299 observations of 68 variables.


