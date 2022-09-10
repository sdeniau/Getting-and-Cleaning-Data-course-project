# Getting-and-Cleaning-Data-course-project
This is the course project for the Getting and Cleaning Data course.

The R script, `getting_cleaning_data_project.R`, does the following:

1. Download the dataset if it does not already exist in the working directory (download zip file and unzip it)
2. Extract test and train datasets and also tables with activities and features info
3. Merge all data to get a table with subjects, activities and all measurements
4. Select columns which reflect a mean or standard deviation of measurements
5. Use descriptive activity names get from activities table
6. Set descriptive variables name
7. Creates a tidy dataset that summarise the average (mean) value of each variable for each subject and activity
8. Export the end result in the file `tidy_data.txt`.
