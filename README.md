# MRE320 Sensor Measurement Report
<p>
  <img alt="GitHub" src="https://img.shields.io/github/license/andrewschalk/MRE320-Sensor-Measurement-Report"/>
</p>
This is group 1's report for the sensor measurement project for MRE320, spring semester 2024 at SIUE with Dr. Zhang. Group 1 consists of Cheng Chen, Liam McGuire, and Andrew Schalk. This report details our study and experimentation with the following sensors: MPU-6050, DHT-11, and HC-SR04. Tasked with determining some of the important static characteristics of the sensors, we present our findings. We first proposed our testing procedures and chose important static characteristics to test. After receiving approval for our testing procedures and static characteristics, we proceeded with our testing and data aggregation. The group presented its findings in a presentation to the class. 

## Utilizing this repository
Within each sensor's folder, one can find the MATLAB code to reproduce our graphs with the measured data, as well as the C++ code used to take the measurements. Each sensor was connected to an Arduino MEGA as shown by [SunFounder](https://docs.sunfounder.com/projects/vincent-kit/en/latest/) with minor modifications to their code. For details on our findings and testing procedures, see our [presentation](/presentation.pdf).

## Summary Report

### DHT-11
Measured Characteristics:
* Humidity Standard Deviation:    0.1746 [%]
* Temperature Standard Deviation: 0.06859 [°C]
* Humidity Accuracy:    within 1 [%]
* Temperature Accuracy: within 1 [%]
* Humidity Range:    40-100 [%]
* Temperature Range: 40-60 [°C]
### HC-SR04
Measured Characteristics:
* Range: 25-400 [cm]
* Repeatability: Average measurements between​ the two tests are close, therefore the tests have good ​repeatability​.
* Accuracy and Precision: 1-250cm are not accurate or precise.​ 300-400cm are somewhat accurate and precise.​ 450-500cm are precise but not accurate.
* Static Error: No consistent static error was found between distances.
### MPU-6050
Measured Characteristics:
* Accelerometer Sensitivity: 1563 [ul/m/s2]
* Gyroscope Sensitivity:     199.1 [ul/°/s]
* Accelerometer Standard Deviation: 1.656 [m/s2]
* Gyroscope Standard Deviation: 9.011 [°/s]
* Accelerometer Max Error: 33.08 [m/s2]
* Gyroscope Max Error: 155.3 [°/s]
* Accelerometer Non-Linearity: 1.651 [m/s2]
* Gyroscope Non-Linearity: 5.192 [°/s] 
