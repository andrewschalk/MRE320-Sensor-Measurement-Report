test1_data = [3.09, 2.43, 5.9, 2.43, 2.1, 5.57, 2.76, 5.03, 12.69, 2.64, ...
              4.05, 2.76, 3.98, 2.76, 2.76, 2.76, 2.66, 3.09, 10.22, 3.41];


test2_data = [3.09, 8.16, 2.76, 2.76, 2.33, 2.43, 4.05, 4.05, 2.43, 2.76, ...
              2.76, 4.05, 2.66, 3.09, 3.07, 4.05, 4.05, 4.05, 3.09, 3.09, ...
              3.09, 2.66];


average_test1 = mean(test1_data);
average_test2 = mean(test2_data);


static_error_test1 = abs(test1_data - 1);  
static_error_test2 = abs(test2_data - 1);

reference_line = ones(size(test1_data));


fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

%% 2cm
test1_data = [6.6, 6.53, 5.67, 4.38, 2.76, 2.76, 4.71, 2.76, 5.02, 2.76, ...
              2.33, 2.43, 5.03, 2.76, 2.76, 2.76, 5.03, 2.43, 2.43, 2.43, ...
              2.1, 2.1];

test2_data = [7.29, 2.1, 2.1, 3.4, 3.41, 2.97, 2.76, 2.76, 2.76, 4.93, ...
              2.76, 6, 3.41, 2.43, 4.69, 6, 3.07, 4.59, 4.71, 3.07, 5.24, ...
              2.76];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);


static_error_test1 = abs(test1_data - 2);  % Assuming the object is 2cm away
static_error_test2 = abs(test2_data - 2);


reference_line = 2 * ones(size(test1_data));


y_axis_limit = max([test1_data, test2_data, reference_line]) + 1;


fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');


ylim([0, y_axis_limit]);

%% 5cm

test1_data = [4.05, 5.57, 3.72, 5.03, 3.64, 5.02, 3.72, 4.71, 4.38, 4.28, ...
              4.38, 4.38, 7.84, 4.05, 4.05, 4.05, 4.05, 4, 4.05, 4.05, 3.95, ...
              4.05];

test2_data = [7.62, 4.97, 4.71, 6.88, 4.05, 6, 5.67, 5.03, 5.57, 4.71, ...
              4.93, 4.05, 4.38, 4.59, 6.98, 5.57, 4.38, 4.38, 4.28, 5.67, ...
              4.38, 6.66];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 5);  % Assuming the object is 5cm away
static_error_test2 = abs(test2_data - 5);

reference_line = 5 * ones(size(test1_data));

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

ylim([0, 10]);

%% 10cm
test1_data = [8.81, 8.6, 8.5, 8.93, 10.22, 9.53, 10.34, 10.34, 8.17, 8.28, ...
              9.64, 9.53, 10.93, 11.4, 9.19, 10.22, 9.64, 10.69, 9.53, 10.93, ...
              10.69, 10.22];

test2_data = [9.88, 11.28, 11.05, 12.33, 12.33, 10.24, 12.69, 10.69, 12.79, ...
              14.44, 12.33, 11.64, 13.03, 14.78, 13.03, 12.33, 12.09, 12.09, ...
              11.98, 11.62, 11.62, 11.64];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 10); 
static_error_test2 = abs(test2_data - 10);

reference_line = 10 * ones(size(test1_data));

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

%% 25cm
test1_data = [25.34, 24.28, 28.83, 24.76, 24.86, 23.9, 30.19, 29.22, ...
              24.57, 28.83, 25.16, 29.40, 24.76, 24.86, 26.78, 30.19, ...
              24.59, 25.17, 24.76, 28.34, 25.45, 25.34];

test2_data = [24.86, 24.76, 29.12, 26.31, 25.34, 25.17, 25.17, 27.66, ...
              25.74, 25.33, 25.33, 25.45, 25.34, 25.45, 25.45, 25.34, ...
              30.29, 26.02, 25.33, 25.74, 25.05, 22.55];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 25);  % Assuming the object is 25cm away
static_error_test2 = abs(test2_data - 25);

reference_line = 25 * ones(size(test1_data));

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');
%% 50cm
test1_data = [50.93, 50.07, 51.43, 48.97, 48.55, 49.57, 49.72, 50.24, ...
              49.9, 50.07, 50.76, 50.74, 50.91, 51.03, 51.03, 51.43, ...
              50.93, 50.93, 50.93, 51.09, 51.10];

test2_data = [51.10, 51.09, 51.6, 51.28, 51.26, 51.78, 51.55, 51.43, ...
              51.43, 51.95, 52.48, 52.12, 52.98, 52.48, 52.45, 52.64, ...
              52.64, 52.62, 52.97, 52.62, 52.12];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 50); 
static_error_test2 = abs(test2_data - 50);

reference_line = 50 * ones(size(test1_data));

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');
%% 100cm
test1_data = [98.66, 98.33, 98.43, 98.28, 98.24, 98.22, 98.22, 98.16, ...
              98.07, 97.97, 98.07, 98.05, 97.97, 97.97, 98.09, 97.97, ...
              97.86, 97.86, 98.33, 98.19, 98.22, 98.22];

test2_data = [98.33, 98.34, 98.24, 98.31, 98.16, 98.67, 98.6, 98.67, ...
              98.34, 98.41, 98.4, 98.41, 99.03, 99.5, 99.67, 99.31, ...
              99.67, 99.57, 99.5, 99.5, 99.95, 99.03];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 100); 
static_error_test2 = abs(test2_data - 100);

reference_line = 100 * ones(size(test1_data));

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

%% 200cm
test1_data = [197.66, 196.57, 196.78, 197.02, 197.22, 196.66, 196.81, ...
              196.31, 196.59, 196.55, 196.47, 196.09, 196, 195.93, ...
              195.9, 195.98, 196.09, 196, 195.95, 195.72, 195.76];

test2_data = [195.59, 195.29, 195.41, 195.5, 195.36, 195.5, 195.57, ...
              195.38, 195.57, 195.67, 195.29, 195.5, 196.07, 196.21, ...
              196.12, 196.47, 196.12, 196.09, 196, 196.38, 195.67];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 200); 
static_error_test2 = abs(test2_data - 200);

reference_line = 200 * ones(size(test1_data));

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

%% 250cm
test1_data = [244.66, 247.33, 247.57, 248.12, 247.93, 248.4, 248.36, ...
              248.26, 249.78, 249.33, 247.55, 247.48, 247.16, 247.33, ...
              246.62, 247.03, 247.07, 247.43, 246.86, 246.78];

test2_data = [246.88, 246.88, 246.88, 247.31, 246.97, 247.02, 247.02, ...
              247.02, 246.95, 246.83, 246.98, 247.69, 248.31, 247.48, ...
              246.81, 246.86, 248.93, 248.22, 248.02, 247.67];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 250); 
static_error_test2 = abs(test2_data - 250);

reference_line = 250 * ones(size(test1_data));

min_y = min([min(test1_data), min(test2_data), min(reference_line)]) - 5;
max_y = max([max(test1_data), max(test2_data), max(reference_line)]) + 5;

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');
ylim([min_y, max_y]);


%% 300cm
test1_data = [297.48, 297.02, 297.02, 296.98, 297.41, 297.43, 297.4, ...
              297.38, 296.59, 296.9, 297.31, 297.33, 296.93, 296.93, ...
              296.91, 296.52, 296.91, 297.33, 297.38, 297.41, 297.02, 296.98];

test2_data = [296.62, 297, 297.5, 297.47, 297.91, 298.4, 298.45, ...
              297.62, 298.03, 297.19, 297.14, 297.19, 297.6, 297.22, ...
              296.91, 297.19, 297.6, 297.21, 297.19, 297.64, 297.28, 297.48];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 300); 
static_error_test2 = abs(test2_data - 300);

reference_line = 300 * ones(size(test1_data));

min_y = min([min(test1_data), min(test2_data), min(reference_line)]) - 5;
max_y = max([max(test1_data), max(test2_data), max(reference_line)]) + 5;

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

ylim([min_y, max_y]);

%% 400cm
test1_data = [397.83, 397.41, 396.93, 397.9, 397.24, 397.79, 398, ...
              397.67, 398.12, 398.52, 398.19, 398.26, 398.26, 398.29, ...
              398.67, 398.26, 398.41, 397.97, 397.95, 397.84, 398.22, 398.22];

test2_data = [398.64, 398.72, 398.22, 398.33, 397.88, 398.24, 398.21, ...
              398.6, 398.21, 398.14, 397.72, 398.14, 398.12, 398.22, ...
              399.03, 398.22, 398.53, 398.53, 398.57, 398.12, 397.76, 398.57];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 400); 
static_error_test2 = abs(test2_data - 400);

reference_line = 400 * ones(size(test1_data));

min_y = min([min(test1_data), min(test2_data), min(reference_line)]) - 5;
max_y = max([max(test1_data), max(test2_data), max(reference_line)]) + 5;

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

ylim([min_y, max_y]);

%% 450cm
test1_data = [444.28, 444.17, 443.86, 443.36, 443.50, 443.38, 443.97, ...
              443.93, 443.66, 443.6, 443.78, 444.1, 444.16, 444.05, ...
              444.16, 444.07, 443.74, 443.64, 443.79, 443.66, 443.76, 444.09];

test2_data = [443.76, 444.05, 444.19, 444.09, 443.79, 443.66, 444.17, ...
              444.03, 443.74, 444.03, 443.72, 444.03, 443.71, 443.6, ...
              443.69, 443.6, 443.76, 443.22, 443.34, 443.64, 443.76, 443.64];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);


static_error_test1 = abs(test1_data - 450);  
static_error_test2 = abs(test2_data - 450);

reference_line = 450 * ones(size(test1_data));

min_y = min([min(test1_data), min(test2_data), min(reference_line)]) - 5;
max_y = max([max(test1_data), max(test2_data), max(reference_line)]) + 5;

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

ylim([min_y, max_y]);


%% 500cm

test1_data = [502.28, 501.91, 502.16, 502.86, 537.09, 536.81, ...
              537.17, 537.29, 537.33, 537.34, 537.59, 538.41, ...
              537.62, 537.62, 536.78];

test2_data = [537.48, 536.21, 536.76, 537.19, 536.74, 536.28, ...
              536.29, 536.79, 537.26, 537.16, 537.10, 537.10, ...
              536.79, 538.05, 537.64];

average_test1 = mean(test1_data);
average_test2 = mean(test2_data);

static_error_test1 = abs(test1_data - 500); 
static_error_test2 = abs(test2_data - 500);

reference_line = 500 * ones(size(test1_data));
min_y = min([min(test1_data), min(test2_data), min(reference_line)]) - 10;
max_y = max([max(test1_data), max(test2_data), max(reference_line)]) + 10;

fprintf('Average of Test 1 data points: %.2f cm\n', average_test1);
fprintf('Average of Test 2 data points: %.2f cm\n', average_test2);

figure;
scatter(1:length(test1_data), test1_data, 'b', 'filled');
hold on;
scatter(1:length(test2_data), test2_data, 'r', 'filled');
plot(1:length(test1_data), reference_line, 'k');
plot([1, length(test1_data)], [average_test1, average_test1], 'b');
plot([1, length(test2_data)], [average_test2, average_test2], 'r');
hold off;

title('Scatter Plot of Test 1 and Test 2 Data Points');
xlabel('Data Point Index');
ylabel('Distance (cm)');
legend('Test 1 Data Points', 'Test 2 Data Points', 'Reference Line', 'Test 1 Average', 'Test 2 Average');

ylim([min_y, max_y]);

