% Humidity and Temperature Data
humidity = [
    35.00 35.00 35.00 35.10 35.10 35.10 35.10 35.10 35.10 35.20 ...
    35.20 35.20 35.20 35.20 35.30 35.40 35.40 35.30 35.40 35.40 ...
    35.50 35.50 35.50 35.50 35.50 35.50 35.40 35.40 35.40
];

temperature = [
    23.80 23.80 23.80 23.80 23.80 23.80 23.80 23.80 23.80 23.80 ...
    23.80 23.80 23.80 23.80 23.80 23.70 23.70 23.80 23.70 23.70 ...
    23.70 23.70 23.70 23.70 23.60 23.70 23.70 23.60 23.60
];

% Calculate Mean Values
mean_humidity = mean(humidity);
mean_temperature = mean(temperature);

% Calculate Errors
humidity_errors = humidity - mean_humidity;
temperature_errors = temperature - mean_temperature;

% Calculate Standard Deviation
humidity_std_dev = std(humidity_errors);
temperature_std_dev = std(temperature_errors);

% Display Results
disp(['Mean Humidity: ', num2str(mean_humidity)]);
disp(['Mean Temperature: ', num2str(mean_temperature)]);
disp(['Humidity Standard Deviation: ', num2str(humidity_std_dev)]);
disp(['Temperature Standard Deviation: ', num2str(temperature_std_dev)]);
