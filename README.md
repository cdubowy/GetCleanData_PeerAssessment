# Getting and Cleaning Data Peer-Assessed Assignment

The R code presented here contains all necessary code to process data from the Human Activity Recognition Using Smartphones Dataset and convert it into a tidier dataset as directed in the Peer Assessment for the "Getting and Cleaning Data" Coursera course. The tidier data set summarizes the data by taking the mean of all observations of each variable for each of the subject and activity combinations.

The code should be executed from the working directory containing the 'activity_labels.txt' 'features_info.txt' and 'features.txt' documents, with nested folders 'test' and 'train' (downloadable from the assignment description.)

Broadly, the code can be though of as having three elements: 
1) merging of the 'test' and 'train' data sets into a data frame called 'all'
2) appropriate annotation and cleaning of the data frame
3) creation of a tidy summary sheet using the 'melt' and 'cast' functions

Note that the final data set only includes summaries of the mean() and sd() statistics calculated from the accelerometer data - other variables were removed, as  directed in the assignment. 

 





