# Code Book
This code book describes: 
- the transformations performed to clean the original dataset
- the variables in the datasets "**tidyData.txt**" and "**tidyData2.txt**"
## The Original Dataset
The original dataset is available at: 
- <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> 

And its description:
- <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>
## Transformation of the original dataset
The README.md file has already elaborated the transformation process. In short, the final datasets in this repository are extracted from the original dataset through the following processes:
1. Merging the training and test datasets into a full dataset;
2. Finding variables that are the means and standard deviations for measurements, and extracted a subset from the full dataset;
3. Replacing the codes of activitiy into activities;
4. Changing the variable labels with descriptive variable names;
5. Creating another dataset that contains the average of each variable grouped by activities and subjects.
## Variables in the tidy datasets ##
### Identifiers ###
- **subject**: the ID of the volunteers in the original experiment. Ranges from 1 to 30 (integer). 
- **activity**: the type of the activity measured by smartphones in the original experiment, including: `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`.
### Feature Info ###
All features in dataset "**tidyData.txt**" come from the accelerometer and gyroscope 3-axial raw signals, and are averaged within each subject for each activity ("**tidyData2.txt**" ). 

The meaning of different parts in the variable names:
- `time`: indicates time domain signals
- `frequency`: indicates frequency domain signals
- `Body`: indicates signals based on body movements
- `Gravity`: indicates signals based on gravity
- `Accelerometer`: indicates signals from the accelerometers of phones
- `Gyroscope`: indicates signals from the gyroscopes of phones
- `Magnitude`: indicates the magnitude of signals
- `Jerk`: indicates signals based on body acceleration and angular velocity
- `mean()`: indicates the measurement is a mean value of a signal defined by the above name parts
- `std()`: indicates the measurement is a standard deviation of a signal defined by the above name parts
- `X`: indicates the measurement is in the "X" direction of the phone
- `Y`: indicates the measurement is in the "Y" direction of the phone
- `Z`: indicates the measurement is in the "Z" direction of the phone
### Feature List ###
* `timeBodyAccelerometer-mean()-X` 
* `timeBodyAccelerometer-mean()-Y` 
* `timeBodyAccelerometer-mean()-Z` 
* `timeBodyAccelerometer-std()-X` 
* `timeBodyAccelerometer-std()-Y` 
* `timeBodyAccelerometer-std()-Z` 
* `timeGravityAccelerometer-mean()-X` 
* `timeGravityAccelerometer-mean()-Y` 
* `timeGravityAccelerometer-mean()-Z` 
* `timeGravityAccelerometer-std()-X` 
* `timeGravityAccelerometer-std()-Y` 
* `timeGravityAccelerometer-std()-Z` 
* `timeBodyAccelerometerJerk-mean()-X` 
* `timeBodyAccelerometerJerk-mean()-Y` 
* `timeBodyAccelerometerJerk-mean()-Z` 
* `timeBodyAccelerometerJerk-std()-X` 
* `timeBodyAccelerometerJerk-std()-Y` 
* `timeBodyAccelerometerJerk-std()-Z` 
* `timeBodyGyroscope-mean()-X` 
* `timeBodyGyroscope-mean()-Y` 
* `timeBodyGyroscope-mean()-Z` 
* `timeBodyGyroscope-std()-X` 
* `timeBodyGyroscope-std()-Y` 
* `timeBodyGyroscope-std()-Z` 
* `timeBodyGyroscopeJerk-mean()-X` 
* `timeBodyGyroscopeJerk-mean()-Y` 
* `timeBodyGyroscopeJerk-mean()-Z` 
* `timeBodyGyroscopeJerk-std()-X` 
* `timeBodyGyroscopeJerk-std()-Y` 
* `timeBodyGyroscopeJerk-std()-Z` 
* `timeBodyAccelerometerMagnitude-mean()` 
* `timeBodyAccelerometerMagnitude-std()` 
* `timeGravityAccelerometerMagnitude-mean()` 
* `timeGravityAccelerometerMagnitude-std()` 
* `timeBodyAccelerometerJerkMagnitude-mean()` 
* `timeBodyAccelerometerJerkMagnitude-std()` 
* `timeBodyGyroscopeMagnitude-mean()` 
* `timeBodyGyroscopeMagnitude-std()` 
* `timeBodyGyroscopeJerkMagnitude-mean()` 
* `timeBodyGyroscopeJerkMagnitude-std()` 
* `frequencyBodyAccelerometer-mean()-X` 
* `frequencyBodyAccelerometer-mean()-Y` 
* `frequencyBodyAccelerometer-mean()-Z` 
* `frequencyBodyAccelerometer-std()-X` 
* `frequencyBodyAccelerometer-std()-Y` 
* `frequencyBodyAccelerometer-std()-Z` 
* `frequencyBodyAccelerometerJerk-mean()-X` 
* `frequencyBodyAccelerometerJerk-mean()-Y` 
* `frequencyBodyAccelerometerJerk-mean()-Z` 
* `frequencyBodyAccelerometerJerk-std()-X` 
* `frequencyBodyAccelerometerJerk-std()-Y` 
* `frequencyBodyAccelerometerJerk-std()-Z` 
* `frequencyBodyGyroscope-mean()-X` 
* `frequencyBodyGyroscope-mean()-Y` 
* `frequencyBodyGyroscope-mean()-Z` 
* `frequencyBodyGyroscope-std()-X` 
* `frequencyBodyGyroscope-std()-Y` 
* `frequencyBodyGyroscope-std()-Z` 
* `frequencyBodyAccelerometerMagnitude-mean()` 
* `frequencyBodyAccelerometerMagnitude-std()` 
* `frequencyBodyAccelerometerJerkMagnitude-mean()` 
* `frequencyBodyAccelerometerJerkMagnitude-std()` 
* `frequencyBodyGyroscopeMagnitude-mean()` 
* `frequencyBodyGyroscopeMagnitude-std()` 
* `frequencyBodyGyroscopeJerkMagnitude-mean()` 
* `frequencyBodyGyroscopeJerkMagnitude-std()`
