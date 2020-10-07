## Introduction
This repository is part of the final course project for the Coursera *Getting and Cleaning Data*
Course Final Project where the goal is to prepare two tidy datasets that can be used for later analysis.

## Description of Main Files Used to Generate Tidy Dataset

| Filename | Description |
|----------|-------------|
| train_and_test_dataset.xlsx | Generated tidy dataset for the raw train and test datasets. |
| dataset_summary.xlsx | Generated tidy dataset summary of the train_and_test_dataset.xlsx dataset|
| codebook.md | A markdown file that gives the description of of the variables used in the datasets dataset_summary.xlsx and train_and_test_dataset.xlsx |
| run_analysis| This file contains the R code used to generate the datasets. |

## Description of Miscellaneous Files

| Filename    | Description                                                                                                    |
|-------------|----------------------------------------------------------------------------------------------------------------|
|train_run.R  | Extra code to generate tidy datasets for train dataset found in the Inertial Signals folder of dataset folder |
|test_run.R   | Extra code to generate tidy datasets for test dataset found in the Inertial Signals folder of dataset folder  |

## Dataset

#### Dataset Title
Human Activity Recognition Using Smartphones Dataset

#### Contributors
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

#### Synopsis
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

#### Files
The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

#### Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

## How to Generate Tidy Datasets

The `run_analysis.R` script is used to generate two tidy data_sets i.e. `train_and_test_dataset.xlsx` and `dataset_summary.xlsx` that are both excel files.

The required R libraries are:
- writexl
- dplyr

The R version used to generate the datasets used in this dataset:
- `R version 4.0.2 (2020-06-22) -- "Taking Off Again"`

The script depends on the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
Download and extract the data into the `data` folder.
## Reference
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
