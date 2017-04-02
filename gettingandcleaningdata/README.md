Getting and Cleaning Data Course Project
=======================

Requirements
----
The following software was used for this project:

- Ubuntu 16.04.2 LTS
- RStudio 1.0.136
- R version 3.3.3 (2017-03-06)

Only core R functions were used to make this analysis easier to run by not having to install additional libraries.

Purpose
----
The purpose of this analysis is to:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Data
----
This project's data set is in the [output-data.txt](output-data.txt) file; it was written using ``write.table()``.

The dataset for this analysis was obtained via Coursera from [this zip file](https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip).

The original dataset is from the UCI Machine Learning Repository, [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

From the original dataset's README.txt:
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

### Original Files
The files in the dataset are described in [UCI HAR Dataset.names](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names) and also in the README.txt within the zip file itself. The original files and descriptions are reproduced here for convenience.

- 'README.txt'
- 'features\_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity\_labels.txt': Links the class labels with their activity name.
- 'train/X\_train.txt': Training set.
- 'train/y\_train.txt': Training labels.
- 'test/X\_test.txt': Test set.
- 'test/y\_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject\_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total\_acc\_x\_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. 
  Every row shows a 128 element vector. The same description applies for the 'total\_acc\_x\_train.txt' and 'total\_acc\_z\_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body\_acc\_x\_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body\_gyro\_x\_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Analysis Files
This analysis did not use all files in the original dataset. Below is a list of files and descriptions that are relevant to this analysis.

- 'activity\_labels.txt': Contains an activity ID and label. These can be matched to the numbers in the 'test/y\_test.txt' and 'train/y\_train.txt' files.
- 'features.txt': Labels for measurements in the 'test/X\_test.txt' and 'train/X\_train.txt' files. These are in column order.
- 'train/subject\_train.txt': ID numbers that denote the subject for the observation.
- 'train/y\_train.txt': ID number that denotes the activity ID for the observation as found in 'activity\_labels.txt'.
- 'train/x\_train.txt': Measurements for each subject and activity. There are 561 measurements. Their labels are in 'features.txt'.
- 'test/subject\_test.txt': ID numbers that denote the subject for the observation.
- 'test/y\_test.txt': ID number that denotes the activity ID for the observation as found in 'activity\_labels.txt'.
- 'test/x\_test.txt': Measurements for each subject and activity. There are 561 measurements. Their labels are in 'features.txt'.

Variables
----
There are 563 variables in the original dataset: subjectid, activityid, and 561 measurements of which the names can be found in 'features.txt'. The variables this analysis uses are subjectid, activityid, and variable names with '-mean()' and '-std()' in their names.

The data contains variables with '-meanFreq()' in their names that might be considered for inclusion with the other '-mean()' variables. This project decided against their use as they only appear in the "f" (frequency domain signal) variables and not the "t" (time domain signal) variables. This choice was made to keep the results consistent between the two types of variables.

This project produces data with 68 variables. The project's [CodeBook](CodeBook.md) lists the variables in detail along with any modifications and summaries calculated as part of this analysis.

Observations
----
Train data set: 7,352

Test data set: 2,947

Total original: 10,299

This project produces a data set with 180 observations, which are the mean of all measurements by subject and activity. Details on the measurements are in the project's [CodeBook](CodeBook.md).

R Scripts
----
This project breaks down each step into a separate R scripts and provides a "main" script for convenience to run all steps in sequence. All script use the working directory as returned by ``getwd()`` as the base for their file operations.

##### run\_analysis.r
This script runs each step in sequence. It assumes there is a "UCI HAR Dataset" directory (created from the original zip file) in the working directory from which it can read the files it requires. This directory can be created by sourcing the [1-download.r](1-download.r) script and calling the ``downloadZipFile()`` function.

##### 0-vars.r
This script contains common code the other scripts need. It also keeps the global environment tidy by creating an environment and cleaning it. The [run\_analysis.r](run\_analysis.r) script uses this to ensure only the ``run_analysis()`` function and resulting data set remain in the global environment.

##### 1-download.r
This script downloads the original zip file and unzips it in the working directory should you want to start the analysis from scratch. The [run\_alaysis.r](run\_analysis.r) script does not use this - it assumes the source directory already exists.

##### 2-merge.r
This script reads the test and training data files, merges each set of 3 files column-wise, and then appends the sets together.

##### 3-extract.r
This script reads the column indexes and names from 'features.txt', finds the rows with -mean() and -std() names and subsets the data set to just these measurements.

##### 4-activities.r
This script renames the first two data set columns to "subjectid" and "activityid", reads the 'activity\_labels.txt' file to a data frame, renames that frame's columns to "activityid" and "activity", and then merges the two datasets to get an activity for each row of the main data set. It then discards the "activityid" column and re-orders the remaining columns to: "subjectid", "activity", "measurement columns".

##### 5-label.r
This script renames the measurement columns to "meanOf-" + originalName (i.e. meanOf-tBodyAcc-mean()-X). We kept the original measurement variable name in order to match the data back up to the original data more easily to avoid confusion.

##### 6-tidy.r
This script calculates the mean of each measurement grouped by both subjectid and activity producing 180 observations with 68 variables: subjectid, activity, and a mean for each -mean() and -std() measurement.

##### 7-data.r
This script has two convenience functions: ``writeData()`` and ``readData()``. Since the project provides the [output-data.txt](output-data.txt) file, you can read it by sourcing this file and then using ``mydata <- readData()``. These functions assume they will read/write the output-data.txt file from/to the working directory.

