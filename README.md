# Getting_CleaningDataCourseProject
This repository contains my work for the course project of Getting and Cleaning Data
## Contents
- `README.md`: contains introduction to files in this repository and explains how the scripts work
- `run_analysis.R`: R script to generate the tidy datasets from the original dataset
- `CODEBOOK.md`: describes the data source, transformations performed on the original dataset, and variable names in detail
- `tidyData.txt`: a tidy dataset with *subject* and *activity* as identifiers, and 66 measurements on the mean and standard deviation as features. See the description of variables in the `CODEBOOK.md`
- `tidyData2.txt`: a tidy dataset with *subject* and *activity* as identifiers, and the average of each measurements within each subject for each activity as features (results in 180 observations). See the description of variables in the `CODEBOOK.md`
## How to run this analysis
To run this analysis, you just need to clone this repo and run `source(run_analysis.R)` in R. Package `dplyr` and `plyr` are necessary to run this script. Please run `install.packages("dplyr")` and  `install.packages("dplyr")` first if you don't have these packages on your computer.
## How does this `run_analysis.R` works
The tidy datasets are extracted from the original dataset according to following steps:
1. Download the original data file and put it in a folder in the current workspace. Unzip the file, read the `README.txt` to learn about the files, and find the data files we need to merge.
2. Read in the training and test data and merge them into a dataset called `fulldata`
3. Look through the `features_info.txt` to identify the measurements on the **mean** and **standard deviation** for each measurement. Read in the feature names as `featureNames` in R, and extracts features that refer to the mean and standard deviation from `fulldata`. Create a new dataset `tidyData` that contains the *subject ID*, *activity code* and *features extracted*.
4. Read in `activity_labels.txt` and name the activities in the dataset `tidyData` with descriptive activity names.
5. Label the features in the dataset `tidyData` with descriptive variable names.
6. Created a second, independent tidy dataset, called `tidyData2`, with the average of each variable for each activity and each subject.
7. Write `tidyData` and `tidyData2` into text files.