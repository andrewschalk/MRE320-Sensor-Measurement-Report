clc;clear;close all;

%% Read in reference data
%Accelerometer data
M = readmatrix("./MeasurementData/2-17test/AccelerometerUncalibrated.csv");% Uncalibrated refers to the fact that these numbers include the acceleration due to gravity
refTime = M(:,1);
refAccZ = M(:,3);
refAccY = M(:,4);
refAccX = M(:,5);

% Gyroscope data
M = readmatrix("./MeasurementData/2-17test/Gyroscope.csv");
refGyroZ = M(:,3)*180/pi;% Convert from rad/s to deg/sec
refGyroY = M(:,4)*180/pi;
refGyroX = M(:,5)*180/pi;

%% Read in measurement data
M = readtable("./MeasurementData/2-17test/Measure.txt");
measureAccX  = M{:,3};
measureAccY  = M{:,4};
measureAccZ  = M{:,5};
measureGyroX = M{:,6};
measureGyroY = M{:,7};
measureGyroZ = M{:,8};

%% Shift datasets to match in time

% Measured time is in reference to start of day-of-measurement, so set measured time to be in unix
for i=1:length(measureAccX)
    measureTime(i,1) = seconds(M{i,1})*10^9 + 1708149600000000000;% Additive value is time since jan 1 1970 to start of test day, in nanoseconds
end

measureTime = measureTime - .755*10^9;% Account for measurement lag of .7 seconds(I'm not sure if this has to do with hysteresis or some lag in serial transmission from microcontroller...)

% Cut off beginning of reference data to start at same time as measured
T0 = measureTime(1);
for i=1:length(refTime)
    if(T0<=refTime(i))
        startindex = i;
        break;
    end
end
refTime  = refTime(startindex:end);
refAccZ  = refAccZ(startindex:end);
refAccY  = refAccY(startindex:end);
refAccX  = refAccX(startindex:end);
refGyroZ = refGyroZ(startindex+1:end);
refGyroY = refGyroY(startindex+1:end);
refGyroX = refGyroX(startindex+1:end);

% Cut off end of measured data to end at same time as reference
Tf = refTime(end);
for i=1:length(refTime)
    if(Tf>=measureTime(end-i))
        endIndex = length(measureTime)-i+2;
        break;
    end
end
measureAccX  = measureAccX(1:endIndex);
measureAccY  = measureAccY(1:endIndex);
measureAccZ  = measureAccZ(1:endIndex);
measureGyroX = measureGyroX(1:endIndex);
measureGyroY = measureGyroY(1:endIndex);
measureGyroZ = measureGyroZ(1:endIndex);
measureTime  = measureTime(1:endIndex);

%% nsec->sec
measureTime = (measureTime-refTime(1))/10^9;
refTime     = (refTime-refTime(1))/10^9;

%% Throw out any datapoints marked with the same time stamp, as this causes errors
[~, uniqueIdx] = unique(measureTime);
dupeIdx = ismember( measureTime, measureTime( setdiff( 1:numel(measureTime), uniqueIdx ) ) );
dupeLoc = find(dupeIdx);
measureTime(dupeLoc)  = [];
measureAccX(dupeLoc)  = [];
measureAccY(dupeLoc)  = [];
measureAccZ(dupeLoc)  = [];
measureGyroX(dupeLoc) = [];
measureGyroY(dupeLoc) = [];
measureGyroZ(dupeLoc) = [];

%% Interprolate data to match x values. Interprelate measured values at reference times
measureAccX  = interp1(measureTime,measureAccX,refTime);
measureAccY  = interp1(measureTime,measureAccY,refTime);
measureAccZ  = interp1(measureTime,measureAccZ,refTime);
measureGyroX = interp1(measureTime,measureGyroX,refTime);
measureGyroY = interp1(measureTime,measureGyroY,refTime);
measureGyroZ = interp1(measureTime,measureGyroZ,refTime);


%% Graph Data
figure;
plot(refTime,refAccX)
%subplot(1,2,2)
hold on
plot(refTime,-(measureAccX*9.8*4)/65536);
legend("Reference","Sensor")
xlabel("Time [s]")
ylabel("Acceleration [m/s^2]")
title("X-Axis Acceleration")
xlim([0,refTime(end)]);

figure;
plot(refTime,refGyroX)
%subplot(1,2,2)
hold on
plot(refTime,-(measureGyroX)/120);
legend("Reference","Sensor")
xlabel("Time [s]")
ylabel("Rotational Velocity [°/s]")
title("Rotational Velocity about X-Axis")
xlim([0,refTime(end)]);

%% Remove saturated and out of range values from our data (who needs methods when you're not a programmer)
saturateIndex   = abs(measureAccX) >= 32767;
saturateIndex   = find(saturateIndex);
outOfRangeIndex = abs(refAccX) >= 19.62;
outOfRangeIndex = find(outOfRangeIndex);
indexes = unique([saturateIndex ;outOfRangeIndex]);
measureAccX(indexes) = [];
refAccX(indexes)     = [];

saturateIndex   = abs(measureAccY) >= 32767;
saturateIndex   = find(saturateIndex);
outOfRangeIndex = abs(refAccY) >= 19.62;
outOfRangeIndex = find(outOfRangeIndex);
indexes = unique([saturateIndex ;outOfRangeIndex]);
measureAccY(indexes) = [];
refAccY(indexes)     = [];

saturateIndex   = abs(measureAccZ) >= 32767;
saturateIndex   = find(saturateIndex);
outOfRangeIndex = abs(refAccZ) >= 19.62;
outOfRangeIndex = find(outOfRangeIndex);
indexes = unique([saturateIndex ;outOfRangeIndex]);
measureAccZ(indexes) = [];
refAccZ(indexes)     = [];

saturateIndex   = abs(measureGyroX) >= 32767;
saturateIndex   = find(saturateIndex);
outOfRangeIndex = abs(refGyroX) >= 250;
outOfRangeIndex = find(outOfRangeIndex);
indexes = unique([saturateIndex ;outOfRangeIndex]);
measureGyroX(indexes) = [];
refGyroX(indexes)     = [];

saturateIndex   = abs(measureGyroY) >= 32767;
saturateIndex   = find(saturateIndex);
outOfRangeIndex = abs(refGyroY) >= 250;
outOfRangeIndex = find(outOfRangeIndex);
indexes = unique([saturateIndex ;outOfRangeIndex]);
measureGyroY(indexes) = [];
refGyroY(indexes)     = [];

saturateIndex   = abs(measureGyroZ) >= 32767;
saturateIndex   = find(saturateIndex);
outOfRangeIndex = abs(refGyroZ) >= 250;
outOfRangeIndex = find(outOfRangeIndex);
indexes = unique([saturateIndex ;outOfRangeIndex]);
measureGyroZ(indexes) = [];
refGyroZ(indexes)     = [];

%% Graph data
figure;
scatter(refAccX,-measureAccX);
hold on;
scatter(refAccY,measureAccY);
%hold on
scatter(refAccZ,-measureAccZ);
polyAcc = polyfit([refAccX.' refAccY.' refAccZ.'],[-measureAccX.' measureAccY.' -measureAccZ.'],1);
hold on;
%plot(refAccX,polyval(polyAcc,refAccX),'LineWidth',3)
hold on;
poly4Acc = fit([refAccX; refAccY; refAccZ],[-measureAccX; measureAccY; -measureAccZ],'poly3');
%plot(poly4Acc)
xlim([-19.62,19.62]);
lgd = legend("\alpha_X","\alpha_Y","\alpha_Z","1563x + 199.8","4th degree poly fit",'location','southeast');
fontsize(lgd,11,'points');
xlabel("Input Acceleration [m/s]");
ylabel("Sensor Output [ul]")
title("Accelerometer Input vs. Output")

figure;
scatter(refGyroX,-measureGyroX);
hold on;
scatter(refGyroY,measureGyroY);
hold on
scatter(refGyroZ,-measureGyroZ);
%polyGyro = polyfit([refGyroX.' refGyroY.' refGyroZ.'],[-measureGyroX.' measureGyroY.' -measureGyroZ.'],1);
hold on;
%plot(refGyroX,polyval(polyGyro,refGyroX),'LineWidth',3)
hold on;
poly4Gyro = fit([refGyroX; refGyroY; refGyroZ],[-measureGyroX; measureGyroY; -measureGyroZ],'poly8');
%plot(poly4Gyro)
xlim([-250,250]);
lgd = legend("\omega_X","\omega_Y","\omega_Z","199.1x + 205.5","4th degree poly fit",'location','southeast');
fontsize(lgd,11,'points');
xlabel("Input Rotational Velocity [°/s]");
ylabel("Sensor Output [ul]")
title("Gyroscope Input vs. Output")


%% Calculating Accuracy/Tolerance
% Accelerometer
acc = [-measureAccX refAccX; measureAccY refAccY; -measureAccZ refAccZ];
for i=1:length(acc)
    lineY       = polyval(polyAcc,acc(i,2));
    accError(i) = abs(lineY-acc(i,1))/1563;
end
meanAccError = mean(accError);
maxAccError  = max(accError);

% Gyroscope
gyro = [-measureGyroX refGyroX; measureGyroY refGyroY; -measureGyroZ refGyroZ];
for i=1:length(gyro)
    lineY        = polyval(polyGyro,gyro(i,2));
    gyroError(i) = abs(lineY-gyro(i,1))/199.1;
end
meanGyroError = mean(gyroError);
maxGyroError  = max(gyroError);

%% Calculating non-linearity
% Accelerometer
lineY = polyval(polyAcc,acc(:,2));
polyY = polyval(poly4Acc,acc(:,2));
accNonLinearity = max(abs(lineY-polyY))/1563;
% Gyroscope
lineY = polyval(polyGyro,gyro(:,2));
polyY = polyval(poly4Gyro,gyro(:,2));
gyroNonLinearity = max(abs(lineY-polyY))/199.1;
