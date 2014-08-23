
Getting and Cleaning Data - Course Project
========================================================

## Synopsis
The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare a tidy data set that can be used for later analysis.

We will be working with data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained. The data file can also be downloaded from the course [site](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) as a zip archive.

These are the tasks required for this project:

* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Use descriptive activity names to name the activities in the data set.
* Appropriately label the data set with descriptive variable names. 
* Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Data Processing
The script [run_analysis.R](https://github.com/amabelster/datasciencecoursera/blob/master/run_analysis.R) contains all the R commands used to arrive from the raw data to the tidy data submitted for this project. The script assumes that the raw data file has already been downloaded to the working directory and unzipped.

First the script reads all the files needed for processing the data. There are three files each for training and test data: a **subject** file that contains the subject identifier for the subject participating in each experiment; a **X** file that contains 561 measurements produced from sensor signals during each experiment; and a **y** file that contains the activity identifier for the activity being performed during each experiment. There is also a file **features.txt** with the description of the features measured in each observation, plus another file **activity_labels.txt** with labels for the activities.

Since the files have no column names, the data are read into R as generic variables (V1, V2, and so on), so the script also has to give them proper names (using the features description for the measurements in the **X** files) before beginning to process the data.

After reading the train and test data, the script creates a train data set and a test data set by combining by columns their three corresponding files. Then the script creates a data set with all the data by combining by rows both data sets.

Next the script subsets (using grep with regular expressions) the measurements on the mean and standard deviation for each measurement. According to the documentation provided with the data, these measurements correspond with variables with "mean()" or "str()" in their name. There are other variables related with means, such as the variables with "meanFreq()" in their name, but these are described as "weighted average of the frequency components to obtain a mean frequency", so they involve further computation beyond the mean of some measurement.

The following step in the data processing is to use descriptive names for the activities in the data set. The script does this by converting the **activity** variable to factor, and using the labels read from the file **activity_labels.txt** to label the levels of the factor variable.

After that the script modifies the names of the measurements in the data set to make them more descriptive, using gsub and regular expressions. I have chosen to write variable names with lower case letters and words separated with dots. I have always thought that the names are very readable in this form, and recently I discovered that it is the naming convention used at [Google](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml). The cleaning process follows these steps:

* Remove punctuation (dashes and parenthesis).
* Replace the prefixes "t" and "f" by "time." and "freq.", respectively.
* Correct a typo in some variable names, replacing "BodyBody" by "Body".
* Replace some abbreviations by their meanings: "Acc" by "accelerometer.", "Gyro" by "gyroscope.", "Mag" by "magnitude.", "std" by "standard.deviation.".
* Add dots at the end of words not affected by the previous commands, like "mean" or "Jerk".
* Remove ending dots where necessary.
* Change to lower case letters.

The resulting names are quite long, but they describe very clearly their corresponding measurements.

Finally the script creates another data set with the average of each variable for each activity and each subject, using the aggregate function. I have chosen to arrange the data making it wide. This means that the tidy data set includes an observation for each combination of subject plus activity (30 subjects and 6 activities, meaning a total of 180 observations). Each observation records the averages of the 66 measurements associated to a subject performing an activity (meaning a total of 68 variables).

I think the choice between wide data or long data is heavily dependent on the subsequent analysis that will be performed on the data. Since in this case we don't know what will be done with the data, it isn't really that relevant to choose between both forms, as long as the result is tidy. Besides, the `reshape2` package provides functions that convert a data frame from wide form to long form and back again very easily.

A full list of the variables included in the tidy data set, with their description, is included in a [code book](https://github.com/amabelster/datasciencecoursera/blob/master/CodeBook.md) in this repository.

