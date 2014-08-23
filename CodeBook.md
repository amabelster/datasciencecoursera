
Code Book - Course Project
========================================================
The tidy data set contains 180 observations from 68 variables, where each observation corresponds to a subject while performing some activity. Besides the identification for subject and activity, there are 66 averages of measurements produced from the sensor signals taken during each experiment. The names of these measurements follow this pattern:

* "mean.of", to indicate that they are means of some measurement.

* "time" or "freq", to indicate whether it refers to time domain signal or a frequency domain signal.

* "body" or "gravity", to indicate whether it refers to body or gravity acceleration signal.

* "accelerometer" or "gyroscope", to indicate whether the measurement comes from the accelerometer or gyroscope signals.

* "jerk", in some measurements this indicates that they were obtained by deriving in time.

* "magnitude", in some measurements this indicates that this is the magnitude of the three-dimensional signals calculated using the Euclidean norm.

* "mean" or "standard.deviation", to indicate which summary statistic was computed for the corresponding measurement.

* "x", "y" or "z", to denote 3-axial signals in the X, Y and Z directions.

Here it is the full list of variables:

* subject: numeric identifier for each subject, takes values from 1 to 30.
* activity: indicates which activity the subject was performing during the experiment. This is one of:
    + WALKING
    + WALKING_UPSTAIRS
    + WALKING_DOWNSTAIRS
    + SITTING
    + STANDING
    + LAYING
* mean.of.time.body.accelerometer.mean.x
* mean.of.time.body.accelerometer.mean.y
* mean.of.time.body.accelerometer.mean.z
* mean.of.time.body.accelerometer.standard.deviation.x
* mean.of.time.body.accelerometer.standard.deviation.y
* mean.of.time.body.accelerometer.standard.deviation.z
* mean.of.time.gravity.accelerometer.mean.x
* mean.of.time.gravity.accelerometer.mean.y
* mean.of.time.gravity.accelerometer.mean.z
* mean.of.time.gravity.accelerometer.standard.deviation.x
* mean.of.time.gravity.accelerometer.standard.deviation.y
* mean.of.time.gravity.accelerometer.standard.deviation.z
* mean.of.time.body.accelerometer.jerk.mean.x
* mean.of.time.body.accelerometer.jerk.mean.y
* mean.of.time.body.accelerometer.jerk.mean.z
* mean.of.time.body.accelerometer.jerk.standard.deviation.x
* mean.of.time.body.accelerometer.jerk.standard.deviation.y
* mean.of.time.body.accelerometer.jerk.standard.deviation.z
* mean.of.time.body.gyroscope.mean.x
* mean.of.time.body.gyroscope.mean.y
* mean.of.time.body.gyroscope.mean.z
* mean.of.time.body.gyroscope.standard.deviation.x
* mean.of.time.body.gyroscope.standard.deviation.y
* mean.of.time.body.gyroscope.standard.deviation.z
* mean.of.time.body.gyroscope.jerk.mean.x
* mean.of.time.body.gyroscope.jerk.mean.y
* mean.of.time.body.gyroscope.jerk.mean.z
* mean.of.time.body.gyroscope.jerk.standard.deviation.x
* mean.of.time.body.gyroscope.jerk.standard.deviation.y
* mean.of.time.body.gyroscope.jerk.standard.deviation.z
* mean.of.time.body.accelerometer.magnitude.mean
* mean.of.time.body.accelerometer.magnitude.standard.deviation
* mean.of.time.gravity.accelerometer.magnitude.mean
* mean.of.time.gravity.accelerometer.magnitude.standard.deviation
* mean.of.time.body.accelerometer.jerk.magnitude.mean
* mean.of.time.body.accelerometer.jerk.magnitude.standard.deviation
* mean.of.time.body.gyroscope.magnitude.mean
* mean.of.time.body.gyroscope.magnitude.standard.deviation
* mean.of.time.body.gyroscope.jerk.magnitude.mean
* mean.of.time.body.gyroscope.jerk.magnitude.standard.deviation
* mean.of.freq.body.accelerometer.mean.x
* mean.of.freq.body.accelerometer.mean.y
* mean.of.freq.body.accelerometer.mean.z
* mean.of.freq.body.accelerometer.standard.deviation.x
* mean.of.freq.body.accelerometer.standard.deviation.y
* mean.of.freq.body.accelerometer.standard.deviation.z
* mean.of.freq.body.accelerometer.jerk.mean.x
* mean.of.freq.body.accelerometer.jerk.mean.y
* mean.of.freq.body.accelerometer.jerk.mean.z
* mean.of.freq.body.accelerometer.jerk.standard.deviation.x
* mean.of.freq.body.accelerometer.jerk.standard.deviation.y
* mean.of.freq.body.accelerometer.jerk.standard.deviation.z
* mean.of.freq.body.gyroscope.mean.x
* mean.of.freq.body.gyroscope.mean.y
* mean.of.freq.body.gyroscope.mean.z
* mean.of.freq.body.gyroscope.standard.deviation.x
* mean.of.freq.body.gyroscope.standard.deviation.y
* mean.of.freq.body.gyroscope.standard.deviation.z
* mean.of.freq.body.accelerometer.magnitude.mean
* mean.of.freq.body.accelerometer.magnitude.standard.deviation
* mean.of.freq.body.accelerometer.jerk.magnitude.mean
* mean.of.freq.body.accelerometer.jerk.magnitude.standard.deviation
* mean.of.freq.body.gyroscope.magnitude.mean
* mean.of.freq.body.gyroscope.magnitude.standard.deviation
* mean.of.freq.body.gyroscope.jerk.magnitude.mean
* mean.of.freq.body.gyroscope.jerk.magnitude.standard.deviation
