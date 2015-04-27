### README file for "Getting and Cleaning Data" course project

#### Author: Rockgecko
#### Date: 27-Apr-2015

This README file provides information relating to the course project submission for the Getting and Cleaning Data course.

The submission consists of:

* A tidy dataset containing the output of the required processing steps, saved as a text file *UCI_HAR_summaryData.txt*
* The script `run_analysis.R` used to perform the required processing
* A file `CodeBook.md` that describes the output data file format and contents
* This README file, which summarizes the processing steps carried out to produce the output file

To replicate the analysis:

* Download the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 
* Unzip the downloaded zip file into the working directory.
* Ensure the dplyr libary is loaded.
* Source/run the `run_analysis.R` script


#### Data processing summary
The data has been generated starting from the UCI HAR dataset provided, using the script `run_analysis.R`. The script assumes the unzipped folder "UCI HAR Dataset" is located in the working directory.

The script carries out the following steps:

1. Read the test and training datasets from file
2. Combine the two datasets into a dataframe called `combinedData`
3. Read the file *features.txt* to give a dataframe called `labels` containing the variable names
4. Using regular expressions, search `labels` for any names containing the text "mean()" or "std()" and store those row numbers
5. Store a subset of combinedData dataframe containing only the variables corresponding to the selected rows in the dataframe `meanAndstdData`
6. Label the columns of `meanAndstdData` with the names of the selected variables
7. Read the *subject_test.txt* and *subject_train.txt* files and combined the resulting dataframes to obtain subject ids for each observation
8. Read the *y_test.txt* and *y_train.txt* files and combined the resulting dataframes to obtain activity ids for each observation
9. Read the *activity_labels.txt* file to obtain a look-up table of activity id versus activity name
10. Match the activity id for each observation in `meanAndstdData` with a corresponding activity name and store the names in a dataframe `DescActs`
11. Add the `DescActs` and `Subjects` dataframes to the left of `meanAndstdData` to produce a dataframe with observations labelled by Subject and Activity
12. Using the `group_by()` and `summarise_each()` functions, calculate the mean values of each variable within each activity and subject group and store these as the dataframe `summaryData`
13. Write the summaryData dataframe out to the file "UCI_HAR_summaryData.txt" with a header row but no row labels