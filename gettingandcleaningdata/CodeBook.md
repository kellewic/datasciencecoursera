Getting and Cleaning Data Course CodeBook
=======================
This code book breaks down the variables into two types for ordering purposes as described in The Journal of Statistical Software article, "Tidy Data" by Hadley Wickham (page 5).

- 'Fixed variables' describe the experimental design and are known in advance.
- 'Measured variables' are what is actually measured in the study.

Original dataset: https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip
Number of variables: 563
Number of observations: 10,299 (combined train and test data sets)
File size: 62,556,944 bytes
File date: 2014-01-15
MD5 checksum: d29710c9530a31f303801b6bc34bd895

Fixed Variables
----
##### Subject Identifier
Description: Indicates the subject to which an observation belongs.
Label: subjectid
Position: 1
Type: integer
Range: 1:30

##### Activity
Description: The activity a subject was performing when the measurement variables were collected. The original values were kept to keep things simple and because they already adequately described the activities.
Label: activity
Position: 2
Type: string
Values:
- WALKING
- WALKING\_UPSTAIRS
- WALKING\_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

Measured Variables
----
We will use the general descriptions from the original data set authors to avoid duplicating the same information for every variable.

From the original dataset's features\_info.txt file:
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

##### The mean of the body acceleration x-axis time domain signal mean value
Description: The mean of tBodyAcc-mean()-X for each subjectid and activity.
Label: meanOf-tBodyAcc-mean()-X
Position: 3
Type: numeric
Decimals: 7
Range: 0.2216 : 0.3015
Units: Hz

##### The mean of the body acceleration y-axis time domain signal mean value
Description: The mean of tBodyAcc-mean()-Y for each subjectid and activity.
Label: meanOf-tBodyAcc-mean()-Y
Position: 4
Type: numeric
Decimals: 9
Range: -0.040510 : -0.001308
Units: Hz

##### The mean of the body acceleration z-axis time domain signal mean value
Description: The mean of tBodyAcc-mean()-Z for each subjectid and activity.
Label: meanOf-tBodyAcc-mean()-Z
Position: 5
Type: numeric
Decimals: 8
Range: -0.15250 : -0.07538
Units: Hz

##### The mean of the body acceleration x-axis time domain signal standard deviation value
Description: The mean of tBodyAcc-std()-X for each subjectid and activity.
Label: meanOf-tBodyAcc-std()-X
Position: 6
Type: numeric
Decimals: 9
Range: -0.9961 : 0.6269
Units: Hz

##### The mean of the body acceleration y-axis time domain signal standard deviation value
Description: The mean of tBodyAcc-std()-Y for each subjectid and activity. 
Label: meanOf-tBodyAcc-std()-Y
Position: 7
Type: numeric
Decimals: 9
Range: -0.99020 : 0.61690
Units: Hz

##### The mean of the body acceleration z-axis time domain signal standard deviation value
Description: The mean of tBodyAcc-std()-Z for each subjectid and activity. 
Label: meanOf-tBodyAcc-std()-Z
Position: 8
Type: numeric
Decimals: 8
Range: -0.9877 : 0.6090
Units: Hz

##### The mean of the gravity acceleration x-axis time domain signal mean value
Description: The mean of tGravityAcc-mean()-X for each subjectid and activity. 
Label: meanOf-tGravityAcc-mean()-X
Position: 9
Type: numeric
Decimals: 7
Range: -0.6800 : 0.9745
Units: Hz

##### The mean of the gravity acceleration y-axis time domain signal mean value
Description: The mean of tGravityAcc-mean()-Y for each subjectid and activity. 
Label: meanOf-tGravityAcc-mean()-Y
Position: 10
Type: numeric
Decimals: 9
Range: -0.47990 : 0.95660
Units: Hz

##### The mean of the gravity acceleration z-axis time domain signal mean value
Description: The mean of tGravityAcc-mean()-Z for each subjectid and activity. 
Label: meanOf-tGravityAcc-mean()-Z
Position: 11
Type: numeric
Decimals: 9
Range: -0.49510 : 0.95790
Units: Hz

##### The mean of the gravity acceleration x-axis time domain signal standard deviation value
Description: The mean of tGravityAcc-std()-X for each subjectid and activity. 
Label: meanOf-tGravityAcc-std()-X
Position: 12
Type: numeric
Decimals: 7
Range: -0.9968 : -0.8296
Units: Hz

##### The mean of the gravity acceleration y-axis time domain signal standard deviation value
Description: The mean of tGravityAcc-std()-Y for each subjectid and activity. 
Label: meanOf-tGravityAcc-std()-Y
Position: 13
Type: numeric
Decimals: 7
Range: -0.9942 : -0.6436
Units: Hz

##### The mean of the gravity acceleration z-axis time domain signal standard deviation value
Description: The mean of tGravityAcc-std()-Z for each subjectid and activity. 
Label: meanOf-tGravityAcc-std()-Z
Position: 14
Type: numeric
Decimals: 7
Range: -0.9910 : -0.6102
Units: Hz

##### The mean of the body acceleration jerk x-axis time domain signal mean value
Description: The mean of tBodyAccJerk-mean()-X for each subjectid and activity. 
Label: meanOf-tBodyAccJerk-mean()-X
Position: 15
Type: numeric
Decimals: 8
Range: 0.04269 : 0.13020
Units: Hz

##### The mean of the body acceleration jerk y-axis time domain signal mean value
Description: The mean of tBodyAccJerk-mean()-Y for each subjectid and activity. 
Label: meanOf-tBodyAccJerk-mean()-Y
Position: 16
Type: numeric
Decimals: 9
Range: -0.0386900 : 0.0568200
Units: Hz

##### The mean of the body acceleration jerk z-axis time domain signal mean value
Description: The mean of tBodyAccJerk-mean()-Z for each subjectid and activity. 
Label: meanOf-tBodyAccJerk-mean()-Z
Position: 17
Type: numeric
Decimals: 8
Range: -0.067460 : 0.038050
Units: Hz

##### The mean of the body acceleration jerk x-axis time domain signal standard deviation value
Description: The mean of tBodyAccJerk-mean()-X for each subjectid and activity. 
Label: meanOf-tBodyAccJerk-std()-X
Position: 18
Type: numeric
Decimals: 9
Range: -0.9946 : 0.5443
Units: Hz

##### The mean of the body acceleration jerk y-axis time domain signal standard deviation value
Description: The mean of tBodyAccJerk-mean()-Y for each subjectid and activity. 
Label: meanOf-tBodyAccJerk-std()-Y
Position: 19
Type: numeric
Decimals: 9
Range: -0.9895 : 0.3553
Units: Hz

##### The mean of the body acceleration jerk z-axis time domain signal standard deviation value
Description: The mean of tBodyAccJerk-mean()-Z for each subjectid and activity. 
Label: meanOf-tBodyAccJerk-std()-Z
Position: 20
Type: numeric
Decimals: 8
Range: -0.99330 : 0.03102
Units: Hz

##### The mean of the body gyroscope x-axis time domain signal mean value
Description: The mean of tBodyGyro-mean()-X for each subjectid and activity. 
Label: meanOf-tBodyGyro-mean()-X
Position: 21
Type: numeric
Decimals: 10
Range: -0.20580 : 0.19270
Units: Hz

##### The mean of the body gyroscope y-axis time domain signal mean value
Description: The mean of tBodyGyro-mean()-Y for each subjectid and activity. 
Label: meanOf-tBodyGyro-mean()-Y
Position: 22
Type: numeric
Decimals: 9
Range: -0.20420 : 0.02747
Units: Hz

##### The mean of the body gyroscope z-axis time domain signal mean value
Description: The mean of tBodyGyro-mean()-Z for each subjectid and activity. 
Label: meanOf-tBodyGyro-mean()-Z
Position: 23
Type: numeric
Decimals: 8
Range: -0.07245 : 0.17910
Units: Hz

##### The mean of the body gyroscope x-axis time domain signal standard deviation value
Description: The mean of tBodyGyro-std()-X for each subjectid and activity. 
Label: meanOf-tBodyGyro-std()-X
Position: 24
Type: numeric
Decimals: 7
Range: -0.9943 : 0.2677
Units: Hz

##### The mean of the body gyroscope y-axis time domain signal standard deviation value
Description: The mean of tBodyGyro-std()-Y for each subjectid and activity. 
Label: meanOf-tBodyGyro-std()-Y
Position: 25
Type: numeric
Decimals: 9
Range: -0.9942 : 0.4765
Units: Hz

##### The mean of the body gyroscope z-axis time domain signal standard deviation value
Description: The mean of tBodyGyro-std()-Z for each subjectid and activity. 
Label: meanOf-tBodyGyro-std()-Z
Position: 26
Type: numeric
Decimals: 8
Range: -0.9855 : 0.5649
Units: Hz

##### The mean of the body gyroscope jerk x-axis time domain signal mean value
Description: The mean of tBodyGyroJerk-mean()-X for each subjectid and activity. 
Label: meanOf-tBodyGyroJerk-mean()-X
Position: 27
Type: numeric
Decimals: 8
Range: -0.15720 : -0.02209
Units: Hz

##### The mean of the body gyroscope jerk y-axis time domain signal mean value
Description: The mean of tBodyGyroJerk-mean()-Y for each subjectid and activity. 
Label: meanOf-tBodyGyroJerk-mean()-Y
Position: 28
Type: numeric
Decimals: 8
Range: -0.07681 : -0.01320
Units: Hz

##### The mean of the body gyroscope jerk z-axis time domain signal mean value
Description: The mean of tBodyGyroJerk-mean()-Z for each subjectid and activity. 
Label: meanOf-tBodyGyroJerk-mean()-Z
Position: 29
Type: numeric
Decimals: 8
Range: -0.092500 : -0.006941
Units: Hz

##### The mean of the body gyroscope jerk x-axis time domain signal standard deviation value
Description: The mean of tBodyGyroJerk-std()-X for each subjectid and activity. 
Label: meanOf-tBodyGyroJerk-std()-X
Position: 30
Type: numeric
Decimals: 8
Range: -0.9965 : 0.1791
Units: Hz

##### The mean of the body gyroscope jerk y-axis time domain signal standard deviation value
Description: The mean of tBodyGyroJerk-std()-Y for each subjectid and activity. 
Label: meanOf-tBodyGyroJerk-std()-Y
Position: 31
Type: numeric
Decimals: 8
Range: -0.9971 : 0.2959
Units: Hz

##### The mean of the body gyroscope jerk z-axis time domain signal standard deviation value
Description: The mean of tBodyGyroJerk-std()-Z for each subjectid and activity. 
Label: meanOf-tBodyGyroJerk-std()-Z
Position: 32
Type: numeric
Decimals: 9
Range: -0.9954 : 0.1932
Units: Hz

##### The mean of the body acceleration magnitude time domain signal mean value
Description: The mean of tBodyAccMag-mean() for each subjectid and activity. 
Label: meanOf-tBodyAccMag-mean()
Position: 33
Type: numeric
Decimals: 8
Range: -0.9865 : 0.6446
Units: Hz

##### The mean of the body acceleration magnitude time domain signal standard deviation value
Description: The mean of tBodyAccMag-std() for each subjectid and activity. 
Label: meanOf-tBodyAccMag-std()
Position: 34
Type: numeric
Decimals: 8
Range: -0.9865 : 0.4284
Units: Hz

##### The mean of the gravity acceleration magnitude time domain signal mean value
Description: The mean of tGravityAccMag-mean() for each subjectid and activity. 
Label: meanOf-tGravityAccMag-mean()
Position: 35
Type: numeric
Decimals: 8
Range: -0.9865 : 0.6446
Units: Hz

##### The mean of the gravity acceleration magnitude time domain signal standard deviation value
Description: The mean of tGravityAccMag-std() for each subjectid and activity. 
Label: meanOf-tGravityAccMag-std()
Position: 36
Type: numeric
Decimals: 8
Range: -0.9865 : 0.4284
Units: Hz

##### The mean of the body acceleration jerk magnitude time domain signal mean value
Description: The mean of tBodyAccJerkMag-mean() for each subjectid and activity. 
Label: meanOf-tBodyAccJerkMag-mean()
Position: 37
Type: numeric
Decimals: 9
Range: -0.9928 : 0.4345
Units: Hz

##### The mean of the body acceleration jerk magnitude time domain signal standard deviation value
Description: The mean of tBodyAccJerkMag-std() for each subjectid and activity. 
Label: meanOf-tBodyAccJerkMag-std()
Position: 38
Type: numeric
Decimals: 8
Range: -0.9946 : 0.4506
Units: Hz

##### The mean of the body gyroscope magnitude time domain signal mean value
Description: The mean of tBodyGyroMag-mean() for each subjectid and activity. 
Label: meanOf-tBodyGyroMag-mean()
Position: 39
Type: numeric
Decimals: 9
Range: -0.9807 : 0.4180
Units: Hz

##### The mean of the body gyroscope magnitude time domain signal standard deviation value
Description: The mean of tBodyGyroMag-std() for each subjectid and activity. 
Label: meanOf-tBodyGyroMag-std()
Position: 40
Type: numeric
Decimals: 8
Range: -0.9814 : 0.3000
Units: Hz

##### The mean of the body gyroscope jerk magnitude time domain signal mean value
Description: The mean of tBodyGyroJerkMag-mean() for each subjectid and activity. 
Label: meanOf-tBodyGyroJerkMag-mean()
Position: 41
Type: numeric
Decimals: 8
Range: -0.99730 : 0.08758
Units: Hz

##### The mean of the body gyroscope jerk magnitude time domain signal standard deviation value
Description: The mean of tBodyGyroJerkMag-std() for each subjectid and activity. 
Label: meanOf-tBodyGyroJerkMag-std()
Position: 42
Type: numeric
Decimals: 9
Range: -0.9977 : 0.2502
Units: Hz

##### The mean of the body acceleration x-axis frequency domain signal mean value
Description: The mean of fBodyAcc-mean()-X for each subjectid and activity. 
Label: meanOf-fBodyAcc-mean()-X
Position: 43
Type: numeric
Decimals: 8
Range: -0.9952 : 0.5370
Units: Hz

##### The mean of the body acceleration y-axis frequency domain signal mean value
Description: The mean of fBodyAcc-mean()-Y for each subjectid and activity. 
Label: meanOf-fBodyAcc-mean()-Y
Position: 44
Type: numeric
Decimals: 9
Range: -0.98900 : 0.52420
Units: Hz

##### The mean of the body acceleration z-axis frequency domain signal mean value
Description: The mean of fBodyAcc-mean()-Z for each subjectid and activity. 
Label: meanOf-fBodyAcc-mean()-Z
Position: 45
Type: numeric
Decimals: 8
Range: -0.9895 : 0.2807
Units: Hz

##### The mean of the body acceleration x-axis frequency domain signal standard deviation value
Description: The mean of fBodyAcc-std()-X for each subjectid and activity. 
Label: meanOf-fBodyAcc-std()-X
Position: 46
Type: numeric
Decimals: 8
Range: -0.9966 : 0.6585
Units: Hz

##### The mean of the body acceleration y-axis frequency domain signal standard deviation value
Description: The mean of fBodyAcc-std()-Y for each subjectid and activity. 
Label: meanOf-fBodyAcc-std()-Y
Position: 47
Type: numeric
Decimals: 9
Range: -0.99070 : 0.56020
Units: Hz

##### The mean of the body acceleration z-axis frequency domain signal standard deviation value
Description: The mean of fBodyAcc-std()-Z for each subjectid and activity. 
Label: meanOf-fBodyAcc-std()-Z
Position: 48
Type: numeric
Decimals: 8
Range: -0.9872 : 0.6871
Units: Hz

##### The mean of the body acceleration jerk x-axis frequency domain signal mean value
Description: The mean of fBodyAccJerk-mean()-X for each subjectid and activity. 
Label: meanOf-fBodyAccJerk-mean()-X
Position: 49
Type: numeric
Decimals: 9
Range: -0.9946 : 0.4743
Units: Hz

##### The mean of the body acceleration jerk y-axis frequency domain signal mean value
Description: The mean of fBodyAccJerk-mean()-Y for each subjectid and activity. 
Label: meanOf-fBodyAccJerk-mean()-Y
Position: 50
Type: numeric
Decimals: 9
Range: -0.9894 : 0.2767
Units: Hz

##### The mean of the body acceleration z-axis frequency domain signal mean value
Description: The mean of fBodyAccJerk-mean()-Z for each subjectid and activity. 
Label: meanOf-fBodyAccJerk-mean()-Z
Position: 51
Type: numeric
Decimals: 8
Range: -0.9920 : 0.1578
Units: Hz

##### The mean of the body acceleration jerk x-axis frequency domain signal standard deviation value
Description: The mean of fBodyAccJerk-std()-X for each subjectid and activity. 
Label: meanOf-fBodyAccJerk-std()-X
Position: 52
Type: numeric
Decimals: 9
Range: -0.9951 : 0.4768
Units: Hz

##### The mean of the body acceleration jerk y-axis frequency domain signal standard deviation value
Description: The mean of fBodyAccJerk-std()-Y for each subjectid and activity. 
Label: meanOf-fBodyAccJerk-std()-Y
Position: 53
Type: numeric
Decimals: 9
Range: -0.9905 : 0.3498
Units: Hz

##### The mean of the body acceleration z-axis frequency domain signal standard deviation value
Description: The mean of fBodyAccJerk-std()-Z for each subjectid and activity. 
Label: meanOf-fBodyAccJerk-std()-Z
Position: 54
Type: numeric
Decimals: 9
Range: -0.993100 : -0.006236
Units: Hz

##### The mean of the body gyroscope x-axis frequency domain signal mean value
Description: The mean of fBodyGyro-mean()-X for each subjectid and activity. 
Label: meanOf-fBodyGyro-mean()-X
Position: 55
Type: numeric
Decimals: 8
Range: -0.9931 : 0.4750
Units: Hz

##### The mean of the body gyroscope y-axis frequency domain signal mean value
Description: The mean of fBodyGyro-mean()-Y for each subjectid and activity. 
Label: meanOf-fBodyGyro-mean()-Y
Position: 56
Type: numeric
Decimals: 8
Range: -0.9940 : 0.3288
Units: Hz

##### The mean of the body gyroscope z-axis frequency domain signal mean value
Description: The mean of fBodyGyro-mean()-Z for each subjectid and activity. 
Label: meanOf-fBodyGyro-mean()-Z
Position: 57
Type: numeric
Decimals: 8
Range: -0.9860 : 0.4924
Units: Hz

##### The mean of the body gyroscope x-axis frequency domain signal standard deviation value
Description: The mean of fBodyGyro-std()-X for each subjectid and activity. 
Label: meanOf-fBodyGyro-std()-X
Position: 58
Type: numeric
Decimals: 8
Range: -0.9947 : 0.1966
Units: Hz

##### The mean of the body gyroscope y-axis frequency domain signal standard deviation value
Description: The mean of fBodyGyro-std()-Y for each subjectid and activity. 
Label: meanOf-fBodyGyro-std()-Y
Position: 59
Type: numeric
Decimals: 8
Range: -0.9944 : 0.6462
Units: Hz

##### The mean of the body gyroscope z-axis frequency domain signal standard deviation value
Description: The mean of fBodyGyro-std()-Z for each subjectid and activity. 
Label: meanOf-fBodyGyro-std()-Z
Position: 60
Type: numeric
Decimals: 8
Range: -0.9867 : 0.5225
Units: Hz

##### The mean of the body acceleration magnitude frequency domain signal mean value
Description: The mean of fBodyAccMag-mean() for each subjectid and activity. 
Label: meanOf-fBodyAccMag-mean()
Position: 61
Type: numeric
Decimals: 9
Range: -0.9868 : 0.5866
Units: Hz

##### The mean of the body acceleration magnitude frequency domain signal standard deviation value
Description: The mean of fBodyAccMag-std() for each subjectid and activity. 
Label: meanOf-fBodyAccMag-std()
Position: 62
Type: numeric
Decimals: 10
Range: -0.9876 : 0.1787
Units: Hz

##### The mean of the body acceleration jerk magnitude frequency domain signal mean value
Description: The mean of fBodyBodyAccJerkMag-mean() for each subjectid and activity. 
Label: meanOf-fBodyBodyAccJerkMag-mean()
Position: 63
Type: numeric
Decimals: 9
Range: -0.9940 : 0.5384
Units: Hz

##### The mean of the body acceleration jerk magnitude frequency domain signal standard deviation value
Description: The mean of fBodyBodyAccJerkMag-std() for each subjectid and activity. 
Label: meanOf-fBodyBodyAccJerkMag-std()
Position: 64
Type: numeric
Decimals: 8
Range: -0.9944 : 0.3163
Units: Hz

##### The mean of the body gyrometer magnitude frequency domain signal mean value
Description: The mean of fBodyBodyGyroMag-mean() for each subjectid and activity. 
Label: meanOf-fBodyBodyGyroMag-mean()
Position: 65
Type: numeric
Decimals: 10
Range: -0.9865 : 0.2040
Units: Hz

##### The mean of the body gyrometer magnitude frequency domain signal standard deviation value
Description: The mean of fBodyBodyGyroMag-std() for each subjectid and activity. 
Label: meanOf-fBodyBodyGyroMag-std()
Position: 66
Type: numeric
Decimals: 8
Range: -0.9815 : 0.2367
Units: Hz

##### The mean of the body gyrometer jerk magnitude frequency domain signal mean value
Description: The mean of fBodyBodyGyroJerkMag-mean() for each subjectid and activity. 
Label: meanOf-fBodyBodyGyroJerkMag-mean()
Position: 67
Type: numeric
Decimals: 8
Range: -0.9976 : 0.1466
Units: Hz

##### The mean of the body gyrometer magnitude frequency domain signal standard deviation value
Description: The mean of fBodyBodyGyroJerkMag-std() for each subjectid and activity. 
Label: meanOf-fBodyBodyGyroJerkMag-std()
Position: 68
Type: numeric
Decimals: 8
Range: -0.9976 : 0.2878
Units: Hz

