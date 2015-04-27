### Code Book for "Getting and Cleaning Data" course project

#### Author: Rockgecko
#### Date: 27-Apr-2015

This CodeBook described the data file produced as output from the assignment.
The datafile is called *UCI_HAR_summaryData.txt*. See *README.md* for details of the analysis process used to generate this data file.

The datafile can be read into R using:
```
data<-read.table(file="UCI_HAR_summaryData.txt",header=TRUE)
```

The data file "UCI_HAR_summaryData.txt" is structured according to tidy data principles as follows:

* First row contains column headers (text)
* All other rows contain an observation i.e. data corresponding to a specific subject/activity combination 
* There are 180 subject/activity combinations 
* There are 68 columns in total
* The first two columns identify the activity type and subject, grouped by activity type
* The remaining 66 columns contain the mean value of one of the selected variables, for that particular subject and activity type
* The variable name is given in the respective column heading
* The raw measurement data was all normalized to the range -1 to +1, so all mean values are also within this range

Here are the full details for each variable:

Column Number | Variable Name | Type | Allowed Values
------------- | ---- | ---- | --------------
1 | ActivityType | Character string | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2 | Subjects | Integer | 1-30
3 | tBodyAcc-mean()-X | Numeric | -1 < x < 1
4 | tBodyAcc-mean()-Y | Numeric | -1 < x < 1
5 | tBodyAcc-mean()-Z | Numeric | -1 < x < 1
6 | tBodyAcc-std()-X | Numeric | -1 < x < 1
7 | tBodyAcc-std()-Y | Numeric | -1 < x < 1
8 | tBodyAcc-std()-Z | Numeric | -1 < x < 1
9 | tGravityAcc-mean()-X | Numeric | -1 < x < 1
10 | tGravityAcc-mean()-Y | Numeric | -1 < x < 1
11 | tGravityAcc-mean()-Z | Numeric | -1 < x < 1
12 | tGravityAcc-std()-X | Numeric | -1 < x < 1
13 | tGravityAcc-std()-Y | Numeric | -1 < x < 1
14 | tGravityAcc-std()-Z | Numeric | -1 < x < 1
15 | tBodyAccJerk-mean()-X | Numeric | -1 < x < 1
16 | tBodyAccJerk-mean()-Y | Numeric | -1 < x < 1
17 | tBodyAccJerk-mean()-Z | Numeric | -1 < x < 1
18 | tBodyAccJerk-std()-X | Numeric | -1 < x < 1
19 | tBodyAccJerk-std()-Y | Numeric | -1 < x < 1
20 | tBodyAccJerk-std()-Z | Numeric | -1 < x < 1
21 | tBodyGyro-mean()-X | Numeric | -1 < x < 1
22 | tBodyGyro-mean()-Y | Numeric | -1 < x < 1
23 | tBodyGyro-mean()-Z | Numeric | -1 < x < 1
24 | tBodyGyro-std()-X | Numeric | -1 < x < 1
25 | tBodyGyro-std()-Y | Numeric | -1 < x < 1
26 | tBodyGyro-std()-Z | Numeric | -1 < x < 1
27 | tBodyGyroJerk-mean()-X | Numeric | -1 < x < 1
28 | tBodyGyroJerk-mean()-Y | Numeric | -1 < x < 1
29 | tBodyGyroJerk-mean()-Z | Numeric | -1 < x < 1
30 | tBodyGyroJerk-std()-X | Numeric | -1 < x < 1
31 | tBodyGyroJerk-std()-Y | Numeric | -1 < x < 1
32 | tBodyGyroJerk-std()-Z | Numeric | -1 < x < 1
33 | tBodyAccMag-mean() | Numeric | -1 < x < 1
34 | tBodyAccMag-std() | Numeric | -1 < x < 1
35 | tGravityAccMag-mean() | Numeric | -1 < x < 1
36 | tGravityAccMag-std() | Numeric | -1 < x < 1
37 | tBodyAccJerkMag-mean() | Numeric | -1 < x < 1
38 | tBodyAccJerkMag-std() | Numeric | -1 < x < 1
39 | tBodyGyroMag-mean() | Numeric | -1 < x < 1
40 | tBodyGyroMag-std() | Numeric | -1 < x < 1
41 | tBodyGyroJerkMag-mean() | Numeric | -1 < x < 1
42 | tBodyGyroJerkMag-std() | Numeric | -1 < x < 1
43 | fBodyAcc-mean()-X | Numeric | -1 < x < 1
44 | fBodyAcc-mean()-Y | Numeric | -1 < x < 1
45 | fBodyAcc-mean()-Z | Numeric | -1 < x < 1
46 | fBodyAcc-std()-X | Numeric | -1 < x < 1
47 | fBodyAcc-std()-Y | Numeric | -1 < x < 1
48 | fBodyAcc-std()-Z | Numeric | -1 < x < 1
49 | fBodyAccJerk-mean()-X | Numeric | -1 < x < 1
50 | fBodyAccJerk-mean()-Y | Numeric | -1 < x < 1
51 | fBodyAccJerk-mean()-Z | Numeric | -1 < x < 1
52 | fBodyAccJerk-std()-X | Numeric | -1 < x < 1
53 | fBodyAccJerk-std()-Y | Numeric | -1 < x < 1
54 | fBodyAccJerk-std()-Z | Numeric | -1 < x < 1
55 | fBodyGyro-mean()-X | Numeric | -1 < x < 1
56 | fBodyGyro-mean()-Y | Numeric | -1 < x < 1
57 | fBodyGyro-mean()-Z | Numeric | -1 < x < 1
58 | fBodyGyro-std()-X | Numeric | -1 < x < 1
59 | fBodyGyro-std()-Y | Numeric | -1 < x < 1
60 | fBodyGyro-std()-Z | Numeric | -1 < x < 1
61 | fBodyAccMag-mean() | Numeric | -1 < x < 1
62 | fBodyAccMag-std() | Numeric | -1 < x < 1
63 | fBodyBodyAccJerkMag-mean() | Numeric | -1 < x < 1
64 | fBodyBodyAccJerkMag-std() | Numeric | -1 < x < 1
65 | fBodyBodyGyroMag-mean() | Numeric | -1 < x < 1
66 | fBodyBodyGyroMag-std() | Numeric | -1 < x < 1
67 | fBodyBodyGyroJerkMag-mean() | Numeric | -1 < x < 1
68 | fBodyBodyGyroJerkMag-std() | Numeric | -1 < x < 1



