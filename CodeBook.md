Code Book
========================================================
The tidy dataset includes one observation (row) for each combination of subject
and activity. There were 30 subjects and 6 activities, so there are a total of 180
rows in the dataset.  

Each of these variables (except "Activity" and "Subject") represents the *mean* score of the variable in question. So, for example, for variables with "std" in the name, the value in the tidy dataset represents the mean of the standard deviations. Scores were normalized so that they range between -1 and 1. There are 66 measurement variables (i.e. excluding "Activity" and "Subject") in the tidy dataset, and they are described below:  
  
**Activity**  
The type of activity the subject was engaged in. There are six levels: laying, sitting, standing, walking, walking downstairs, walking upstairs  

**Subject**  
The subject number. Ranges from 1-30  

**TimeBodyAcc-mean-X**  
Mean body acceleration time domain signal in the X direction   
  
**TimeBodyAcc-mean-Y**  
Mean body acceleration time domain signal in the Y direction   
  
**TimeBodyAcc-mean-Z**  
Mean body acceleration time domain signal in the Z direction   
  
**TimeGravityAcc-mean-X**  
Mean gravity acceleration time domain signal in the X direction   
  
**TimeGravityAcc-mean-Y**  
Mean gravity acceleration time domain signal in the Y direction   
  
**TimeGravityAcc-mean-Z**  
Mean gravity acceleration time domain signal in the Z direction   
  
**TimeBodyAccJerk-mean-X**  
Mean body acceleration time domain jerk signal in the X direction   
  
**TimeBodyAccJerk-mean-Y**  
Mean body acceleration time domain jerk signal in the Y direction   
  
**TimeBodyAccJerk-mean-Z**  
Mean body acceleration time domain jerk signal in the Z direction   
  
**TimeBodyGyro-mean-X**  
Mean body acceleration time domain signal from gyroscope in the X direction   
  
**TimeBodyGyro-mean-Y**  
Mean body acceleration time domain signal from gyroscope in the Y direction   
  
**TimeBodyGyro-mean-Z**  
Mean body acceleration time domain signal from gyroscope in the Z direction   
  
**TimeBodyGyroJerk-mean-X**  
Mean body acceleration time domain jerk signal from gyroscope in the X direction   
  
**TimeBodyGyroJerk-mean-Y**  
Mean body acceleration time domain jerk signal from gyroscope in the Y direction   
  
**TimeBodyGyroJerk-mean-Z**  
Mean body acceleration time domain jerk signal from gyroscope in the Z direction   
  
**TimeBodyAccMag-mean**  
Mean magnitude of body acceleration time domain signal     
  
**TimeGravityAccMag-mean**  
Mean magnitude of gravity acceleration time domain signal     
  
**TimeBodyAccJerkMag-mean**  
Mean magnitude of body acceleration time domain jerk signal     
  
**TimeBodyGyroMag-mean**  
Mean magnitude of body acceleration time domain signal from gyroscope     
  
**TimeBodyGyroJerkMag-mean**  
Mean magnitude of body acceleration time domain signal from gyroscope     
  
**FreqBodyAcc-mean-X**  
Mean body acceleration frequency domain signal in the X direction   
  
**FreqBodyAcc-mean-Y**  
Mean body acceleration frequency domain signal in the Y direction   
  
**FreqBodyAcc-mean-Z**  
Mean body acceleration frequency domain signal in the Z direction   
  
**FreqBodyAccJerk-mean-X**  
Mean body acceleration frequency domain jerk signal in the X direction   
  
**FreqBodyAccJerk-mean-Y**  
Mean body acceleration frequency domain jerk signal in the Y direction   
  
**FreqBodyAccJerk-mean-Z**  
Mean body acceleration frequency domain jerk signal in the Z direction   
  
**FreqBodyGyro-mean-X**  
Mean body acceleration frequency domain signal from gyroscope in the X direction   
  
**FreqBodyGyro-mean-Y**  
Mean body acceleration frequency domain signal from gyroscope in the Y direction   
  
**FreqBodyGyro-mean-Z**  
Mean body acceleration frequency domain signal from gyroscope in the Z direction   
  
**FreqBodyAccMag-mean**  
Mean magnitude of body acceleration frequency domain signal     
  
**FreqBodyAccJerkMag-mean**  
Mean magnitude of body acceleration frequency domain jerk signal     
  
**FreqBodyGyroMag-mean**  
Mean magnitude of body acceleration frequency domain signal from gyroscope      
  
**FreqBodyGyroJerkMag-mean**  
Mean magnitude of body acceleration frequency domain jerk signal from gyroscope     
  
**TimeBodyAcc-std-X**  
Standard deviation of body acceleration time domain signal in the X direction   
  
**TimeBodyAcc-std-Y**  
Standard deviation of body acceleration time domain signal in the Y direction   
  
**TimeBodyAcc-std-Z**  
Standard deviation of body acceleration time domain signal in the Z direction   
  
**TimeGravityAcc-std-X**  
Standard deviation of gravity acceleration time domain signal in the X direction   
  
**TimeGravityAcc-std-Y**  
Standard deviation of gravity acceleration time domain signal in the Y direction   
  
**TimeGravityAcc-std-Z**  
Standard deviation of gravity acceleration time domain signal in the Z direction   
  
**TimeBodyAccJerk-std-X**  
Standard deviation of body acceleration time domain jerk signal in the X direction   
  
**TimeBodyAccJerk-std-Y**  
Standard deviation of body acceleration time domain jerk signal in the Y direction   
  
**TimeBodyAccJerk-std-Z**  
Standard deviation of body acceleration time domain jerk signal in the Z direction   
  
**TimeBodyGyro-std-X**  
Standard deviation of body acceleration time domain signal from gyroscope in the X direction   
  
**TimeBodyGyro-std-Y**  
Standard deviation of body acceleration time domain signal from gyroscope in the Y direction   
  
**TimeBodyGyro-std-Z**  
Standard deviation of body acceleration time domain signal from gyroscope in the Z direction   
  
**TimeBodyGyroJerk-std-X**  
Standard deviation of body acceleration time domain jerk signal from gyroscope in the X direction   
  
**TimeBodyGyroJerk-std-Y**  
Standard deviation of body acceleration time domain jerk signal from gyroscope in the Y direction   
  
**TimeBodyGyroJerk-std-Z**  
Standard deviation of body acceleration time domain jerk signal from gyroscope in the Z direction   
  
**TimeBodyAccMag-std**  
Standard deviation of magnitude of body acceleration time domain signal     
  
**TimeGravityAccMag-std**  
Standard deviation of magnitude of gravity acceleration time domain signal     
  
**TimeBodyAccJerkMag-std**  
Standard deviation of magnitude of body acceleration time domain jerk signal     
  
**TimeBodyGyroMag-std**  
Standard deviation of magnitude of body acceleration time domain signal from gyroscope    
  
**TimeBodyGyroJerkMag-std**  
Standard deviation of magnitude of body acceleration time domain jerk signal from gyroscope    
  
**FreqBodyAcc-std-X**  
Standard deviation of body acceleration frequency domain signal in the X direction   
  
**FreqBodyAcc-std-Y**  
Standard deviation of body acceleration frequency domain signal in the Y direction   
  
**FreqBodyAcc-std-Z**  
Standard deviation of body acceleration frequency domain signal in the Z direction   
  
**FreqBodyAccJerk-std-X**  
Standard deviation of body acceleration frequency domain jerk signal in the X direction   
  
**FreqBodyAccJerk-std-Y**  
Standard deviation of body acceleration frequency domain jerk signal in the Y direction   
  
**FreqBodyAccJerk-std-Z**  
Standard deviation of body acceleration frequency domain jerk signal in the Z direction   
  
**FreqBodyGyro-std-X**  
Standard deviation of body acceleration frequency domain signal from gyroscope in the X direction   
  
**FreqBodyGyro-std-Y**  
Standard deviation of body acceleration frequency domain signal from gyroscope in the Y direction   
  
**FreqBodyGyro-std-Z**  
Standard deviation of body acceleration frequency domain signal from gyroscope in the Z direction   
  
**FreqBodyAccMag-std**  
Standard deviation of magnitude of body acceleration frequency domain signal     
  
**FreqBodyAccJerkMag-std**  
Standard deviation of magnitude of body acceleration frequency domain jerk signal     
  
**FreqBodyGyroMag-std**  
Standard deviation of magnitude of body acceleration frequency domain signal from gyroscope    
  
**FreqBodyGyroJerkMag-std**  
Standard deviation of magnitude of body acceleration frequency domain jerk signal from gyroscope  