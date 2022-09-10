# Code Book

This code book describes the [data](#data), [variables](#variables), and any [transformations](#transformations) performed to clean up the data in `run_analysis.R` 

## Data <a name="data"></a>

The `tidy_data.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the [Variables](#variables) section, and the following rows contain the values of these variables. 


## Variables <a name="variables"></a>

* `subject`: the ID of the volunteers ranging from 1 - 30
* `activity_lab`: specific activities that were performing(`WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`)
* Average of measurements : 

All measurements are floating-point values, normalised and bounded within [-1,1].

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions
  - `TimeBodyAccelerometer-Mean-X` 
  - `TimeBodyAccelerometer-Mean-Y` 
  - `TimeBodyAccelerometer-Mean-Z` 

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions
  - `TimeBodyAccelerometer-StandardDeviation-X` 
  - `TimeBodyAccelerometer-StandardDeviation-Y` 
  - `TimeBodyAccelerometer-StandardDeviation-Z` 

- Average time-domain gravity acceleration in the X, Y and Z directions
  - `TimeGravityAccelerometer-Mean-X` 
  - `TimeGravityAccelerometer-Mean-Y` 
  - `TimeGravityAccelerometer-Mean-Z` 

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions
  - `TimeGravityAccelerometer-StandardDeviation-X` 
  - `TimeGravityAccelerometer-StandardDeviation-Y` 
  - `TimeGravityAccelerometer-StandardDeviation-Z` 

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions
* `TimeBodyAccelerometerJerk-Mean-X` 
* `TimeBodyAccelerometerJerk-Mean-Y` 
* `TimeBodyAccelerometerJerk-Mean-Z` 
- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions
* `TimeBodyAccelerometerJerk-StandardDeviation-X` 
* `TimeBodyAccelerometerJerk-StandardDeviation-Y` 
* `TimeBodyAccelerometerJerk-StandardDeviation-Z` 
- Average time-domain body angular velocity in the X, Y and Z directions
* `TimeBodyGyroscope-Mean-X` 
* `TimeBodyGyroscope-Mean-Y` 
* `TimeBodyGyroscope-Mean-Z` 
- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions
* `TimeBodyGyroscope-StandardDeviation-X` 
* `TimeBodyGyroscope-StandardDeviation-Y` 
* `TimeBodyGyroscope-StandardDeviation-Z` 
- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions
* `TimeBodyGyroscopeJerk-Mean-X` 
* `TimeBodyGyroscopeJerk-Mean-Y` 
* `TimeBodyGyroscopeJerk-Mean-Z` 
- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions
* `TimeBodyGyroscopeJerk-StandardDeviation-X` 
* `TimeBodyGyroscopeJerk-StandardDeviation-Y` 
* `TimeBodyGyroscopeJerk-StandardDeviation-Z` 
- Average and standard deviation of the time-domain magnitude of body acceleration
* `TimeBodyAccelerometerMagnitude-Mean` 
* `TimeBodyAccelerometerMagnitude-StandardDeviation` 
- Average and standard deviation of the time-domain magnitude of gravity acceleration
* `TimeGravityAccelerometerMagnitude-Mean` 
* `TimeGravityAccelerometerMagnitude-StandardDeviation` 
- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time)
* `TimeBodyAccelerometerJerkMagnitude-Mean` 
* `TimeBodyAccelerometerJerkMagnitude-StandardDeviation` 
- Average and standard deviation of the time-domain magnitude of body angular velocity
* `TimeBodyGyroscopeMagnitude-Mean` 
* `TimeBodyGyroscopeMagnitude-StandardDeviation` 
- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)
* `TimeBodyGyroscopeJerkMagnitude-Mean` 
* `TimeBodyGyroscopeJerkMagnitude-StandardDeviation` 

#### Frequency-domain signals

Average frequency-domain body acceleration in the X, Y and Z directions
* `FrequencyBodyAccelerometer-Mean-X` 
* `FrequencyBodyAccelerometer-Mean-Y` 
* `FrequencyBodyAccelerometer-Mean-Z`
Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions
* `FrequencyBodyAccelerometer-StandardDeviation-X` 
* `FrequencyBodyAccelerometer-StandardDeviation-Y` 
* `FrequencyBodyAccelerometer-StandardDeviation-Z` 
Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions
* `FrequencyBodyAccelerometerJerk-Mean-X` 
* `FrequencyBodyAccelerometerJerk-Mean-Y` 
* `FrequencyBodyAccelerometerJerk-Mean-Z` 
Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z direction
* `FrequencyBodyAccelerometerJerk-StandardDeviation-X` 
* `FrequencyBodyAccelerometerJerk-StandardDeviation-Y` 
* `FrequencyBodyAccelerometerJerk-StandardDeviation-Z` 
Average frequency-domain body angular velocity in the X, Y and Z directions
* `FrequencyBodyGyroscope-Mean-X` 
* `FrequencyBodyGyroscope-Mean-Y` 
* `FrequencyBodyGyroscope-Mean-Z` 
Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions
* `FrequencyBodyGyroscope-StandardDeviation-X` 
* `FrequencyBodyGyroscope-StandardDeviation-Y` 
* `FrequencyBodyGyroscope-StandardDeviation-Z`
Average and standard deviation of the frequency-domain magnitude of body acceleration
* `FrequencyBodyAccelerometerMagnitude-Mean` 
* `FrequencyBodyAccelerometerMagnitude-StandardDeviation` 
Average and standard deviation of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time)
* `FrequencyBodyBodyAccelerometerJerkMagnitude-Mean` 
* `FrequencyBodyBodyAccelerometerJerkMagnitude-StandardDeviation` 
Average and standard deviation of the frequency-domain magnitude of body angular velocity
* `FrequencyBodyBodyGyroscopeMagnitude-Mean` 
* `FrequencyBodyBodyGyroscopeMagnitude-StandardDeviation` 
Average and standard deviation  of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
* `FrequencyBodyBodyGyroscopeJerkMagnitude-Mean` 
* `FrequencyBodyBodyGyroscopeJerkMagnitude-StandardDeviation`

## Transformations <a name="transformations"></a>

1. Zip file containing the raw data was dowload there [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

2. The train and test sets were merged to create one data set (subjets, activities and measurements).

3. The measurements on the mean and standard deviation (i.e. variable names containing `mean()` and `std()`) were selected

4. The activity identifiers (integers between 1 and 6) were replaced with descriptive activity labels.

5. All the measurement variable names were replaced with descriptive variable names ; for example `tBodyAcc-mean()-X` was transform in `TimeBodyAccelerometer-Mean-X`

6. Tidy dataset with the average of each variable for each activity and each subject was created

