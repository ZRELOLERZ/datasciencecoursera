## train_and_test_dataset.xlsx
`No. of rows` : **10299**

`No. of columns`: **82**

| Column Index | Variable Names                   | Variable Type     |   Range  |Description |
|--------------|----------------------------------|-------------------|----------|------------|
|1             |subject_ID                        | numeric           |   1 - 30 | Indicates the numeric ID of the participant/ subject |
|2             |observation_engaged               | character         | <ul><li>TRAINING</li><li>TESTING</li></ul>| Indicates whether or not a participant was a part of training or testing |
|3             |activity_type                     | character         | <ul> <li>LAYING</li><li>SITTING</li><li>STANDING</li><li>WALKING</li><li>WALKING_DOWNSTAIRS</li><li>WALKING_UPSTAIRS</li></ul> | Indicates the which of the six activities the subject performed |
|4             | tBodyAcc-mean()-X                | numeric           | -1 to 1 | mean time for linear acceleration on x-axis
|5             | tBodyAcc-mean()-Y                | numeric           | -1 to 1 | mean time for linear acceleration on y-axis
|6             | tBodyAcc-mean()-Z                | numeric           | -1 to 1 | mean time for linear acceleration on z-axis
|7             | tBodyAcc-std()-X                 | numeric           | -1 to 1 | standard deviated time for linear acceleration on x-axis
|8             | tBodyAcc-std()-Y                 | numeric           | -1 to 1 | standard deviated time for linear acceleration on y-axis
|9             | tBodyAcc-std()-Z                 | numeric           | -1 to 1 | standard deviated time for linear acceleration on z-axis
|10            | tGravityAcc-mean()-X             | numeric           | -1 to 1 | mean time for gravitational acceleration on x-axis
|11            | tGravityAcc-mean()-Y             | numeric           | -1 to 1 | mean time for gravitational acceleration on y-axis
|12            | tGravityAcc-mean()-Z             | numeric           | -1 to 1 | mean time for gravitational acceleration on z-axis
|13            | tGravityAcc-std()-X              | numeric           | -1 to 1 | standard deviated time for gravitational acceleration on x-axis 
|14            | tGravityAcc-std()-Y              | numeric           | -1 to 1 | standard deviated time for gravitational acceleration on y-axis 
|15            | tGravityAcc-std()-Z              | numeric           | -1 to 1 | standard deviated time for gravitational acceleration on z-axis 
|16            | tBodyAccJerk-mean()-X            | numeric           | -1 to 1 | mean time for linear acceleration jerk signal on x-axis 
|17            | tBodyAccJerk-mean()-Y            | numeric           | -1 to 1 | mean time for linear acceleration jerk signal on y-axis 
|18            | tBodyAccJerk-mean()-Z            | numeric           | -1 to 1 | mean time for linear acceleration jerk signal on z-axis 
|19            | tBodyAccJerk-std()-X             | numeric           | -1 to 1 | standard deviated time for linear acceleration jerk signal on x-axis 
|20            | tBodyAccJerk-std()-Y             | numeric           | -1 to 1 | standard deviated time for linear acceleration jerk signal on y-axis 
|21            | tBodyAccJerk-std()-Z             | numeric           | -1 to 1 | standard deviated time for linear acceleration jerk signal on z-axis 
|22            | tBodyGyro-mean()-X               | numeric           | -1 to 1 | gyroscopic mean time on x-axis
|23            | tBodyGyro-mean()-Y               | numeric           | -1 to 1 | gyroscopic mean time on x-axis
|24            | tBodyGyro-mean()-Z               | numeric           | -1 to 1 | gyroscopic mean time on x-axis
|25            | tBodyGyro-std()-X                | numeric           | -1 to 1 | standard deviated gyroscopic mean time on x-axis
|26            | tBodyGyro-std()-Y                | numeric           | -1 to 1 | standard deviated gyroscopic mean time on y-axis
|27            | tBodyGyro-std()-Z                | numeric           | -1 to 1 | standard deviated gyroscopic mean time on z-axis
|28            | tBodyGyroJerk-mean()-X           | numeric           | -1 to 1 | gyroscopic mean time for jerk signal on x-axis
|29            | tBodyGyroJerk-mean()-Y           | numeric           | -1 to 1 | gyroscopic mean time for jerk signal on y-axis
|30            | tBodyGyroJerk-mean()-Z           | numeric           | -1 to 1 | gyroscopic mean time for jerk signal on z-axis
|31            | tBodyGyroJerk-std()-X            | numeric           | -1 to 1 | standard deviated gyroscopic mean time for jerk signal on x-axis
|32            | tBodyGyroJerk-std()-Y            | numeric           | -1 to 1 | standard deviated gyroscopic mean time for jerk signal on y-axis
|33            | tBodyGyroJerk-std()-Z            | numeric           | -1 to 1 | standard deviated gyroscopic mean time for jerk signal on z-axis
|34            | tBodyAccMag-mean()               | numeric           | -1 to 1 | Euclidean norm magnitude mean time for linear acceleration
|35            | tBodyAccMag-std()                | numeric           | -1 to 1 | standard deviated Euclidean norm magnitude mean time for linear acceleration
|36            | tGravityAccMag-mean()            | numeric           | -1 to 1 | Euclidean norm magnitude mean time for gravitational acceleration
|37            | tGravityAccMag-std()             | numeric           | -1 to 1 | standard deviated Euclidean norm magnitude time for gravitational acceleration
|38            | tBodyAccJerkMag-mean()           | numeric           | -1 to 1 | Euclidean norm magnitude mean time for linear acceleration for jerk signal
|39            | tBodyAccJerkMag-std()            | numeric           | -1 to 1 | standard deviated Euclidean norm magnitude mean time for linear acceleration for jerk signal
|40            | tBodyGyroMag-mean()              | numeric           | -1 to 1 | Euclidean norm magnitude gyroscopic mean time
|41            | tBodyGyroMag-std()               | numeric           | -1 to 1 | standard deviated Euclidean norm magnitude gyroscopic mean time
|42            | tBodyGyroJerkMag-mean()          | numeric           | -1 to 1 | Euclidean norm magnitude gyroscopic mean time for jerk signal
|43            | tBodyGyroJerkMag-std()           | numeric           | -1 to 1 | standard deviated Euclidean norm magnitude gyroscopic mean time for jerk signal
|44            | fBodyAcc-mean()-X                | numeric           | -1 to 1 | FFT mean for linear acceleration on x-axis
|45            | fBodyAcc-mean()-Y                | numeric           | -1 to 1 | FFT mean for linear acceleration on y-axis
|46            | fBodyAcc-mean()-Z                | numeric           | -1 to 1 | FFT mean for linear acceleration on z-axis
|47            | fBodyAcc-std()-X                 | numeric           | -1 to 1 | FFT standard deviation for linear acceleration on x-axis
|48            | fBodyAcc-std()-Y                 | numeric           | -1 to 1 | FFT standard deviation for linear acceleration on y-axis
|49            | fBodyAcc-std()-Z                 | numeric           | -1 to 1 | FFT standard deviation for linear acceleration on z-axis
|50            | fBodyAcc-meanFreq()-X            | numeric           | -1 to 1 | FFT linear acceleration mean frequency on x-axis 
|51            | fBodyAcc-meanFreq()-Y            | numeric           | -1 to 1 | FFT linear acceleration mean frequency on y-axis 
|53            | fBodyAcc-meanFreq()-Z            | numeric           | -1 to 1 | FFT linear acceleration mean frequency on z-axis 
|54            | fBodyAccJerk-mean()-X            | numeric           | -1 to 1 | FFT linear acceleration mean for jerk signal on x-axis 
|55            | fBodyAccJerk-mean()-Y            | numeric           | -1 to 1 | FFT linear acceleration mean for jerk signal on y-axis 
|56            | fBodyAccJerk-mean()-Z            | numeric           | -1 to 1 | FFT linear acceleration mean for jerk signal on z-axis 
|57            | fBodyAccJerk-std()-X             | numeric           | -1 to 1 | standard deviated linear acceleration jerk signal on x-axis
|58            | fBodyAccJerk-std()-Y             | numeric           | -1 to 1 | standard deviated linear acceleration jerk signal on y-axis
|59            | fBodyAccJerk-std()-Z             | numeric           | -1 to 1 | standard deviated linear acceleration jerk signal on z-axis
|60            | fBodyAccJerk-meanFreq()-X        | numeric           | -1 to 1 | FFT linear acceleration mean frequency for jerk signal on x-axis 
|61            | fBodyAccJerk-meanFreq()-Y        | numeric           | -1 to 1 | FFT linear acceleration mean frequency for jerk signal on y-axis 
|62            | fBodyAccJerk-meanFreq()-Z        | numeric           | -1 to 1 | FFT linear acceleration mean frequency for jerk signal on z-axis 
|63            | fBodyGyro-mean()-X               | numeric           | -1 to 1 | FFT gyroscopic mean on x-axis
|64            | fBodyGyro-mean()-Y               | numeric           | -1 to 1 | FFT gyroscopic mean on x-axis
|65            | fBodyGyro-mean()-Z               | numeric           | -1 to 1 | FFT gyroscopic mean on x-axis
|66            | fBodyGyro-std()-X                | numeric           | -1 to 1 | FFT gyroscopic standard deviation on x-axis
|67            | fBodyGyro-std()-Y                | numeric           | -1 to 1 | FFT gyroscopic standard deviation on x-axis
|68            | fBodyGyro-std()-Z                | numeric           | -1 to 1 | FFT gyroscopic standard deviation on x-axis
|69            | fBodyGyro-meanFreq()-X           | numeric           | -1 to 1 | FFT gyroscopic mean frequency on x-axis
|70            | fBodyGyro-meanFreq()-Y           | numeric           | -1 to 1 | FFT gyroscopic mean frequency on y-axis
|71            | fBodyGyro-meanFreq()-Z           | numeric           | -1 to 1 | FFT gyroscopic mean frequency on z-axis
|72            | fBodyAccMag-mean()               | numeric           | -1 to 1 | FFT linear acceleration mean magnitude
|73            | fBodyAccMag-std()                | numeric           | -1 to 1 | standard deviated FFT linear acceleration magnitude
|74            | fBodyAccMag-meanFreq()           | numeric           | -1 to 1 | FFT linear acceleration mean frequency magnitude
|75            | fBodyBodyAccJerkMag-mean()       | numeric           | -1 to 1 | FFT linear acceleration mean magnitude for jerk signal
|76            | fBodyBodyAccJerkMag-std()        | numeric           | -1 to 1 | standard deviated FFT linear acceleration magnitude for jerk signal
|77            | fBodyBodyAccJerkMag-meanFreq()   | numeric           | -1 to 1 | FFT linear acceleration mean frequency magnitude for jerk signal
|78            | fBodyBodyGyroMag-mean()          | numeric           | -1 to 1 | FFT gyroscopic mean magnitude
|79            | fBodyBodyGyroMag-std()           | numeric           | -1 to 1 | standard deviated gyroscopic magnitude
|80            | fBodyBodyGyroMag-meanFreq()      | numeric           | -1 to 1 | FFT gyroscopic mean frequency magnitude 
|81            | fBodyBodyGyroJerkMag-mean()      | numeric           | -1 to 1 | FFT gyroscopic mean magnitude for jerk signal
|82            | fBodyBodyGyroJerkMag-std()       | numeric           | -1 to 1 | standard deviated FFT magnitude for jerk signal
|82            | fBodyBodyGyroJerkMag-meanFreq()  | numeric           | -1 to 1 |standard deviated Euclidean norm magnitude gyroscopic mean time for jerk signal


## dataset_summary.xlsx

`No. of rows` : **180**

`No. of columns`: **82**

The variables are the same as found in the datatset `train_and_test_dataset` but it is grouped by **`subject_ID`**, **`activity_type`** then **`observation_engaged`** and the remaining rows i.e. the *features*,
summarized by mean.