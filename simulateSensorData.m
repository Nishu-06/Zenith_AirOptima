% simulateSensorData.m
% Function to simulate sensor data

function [sensorData, time] = simulateSensorData()
    % Simulation parameters
    numSensors = 5;  % Number of sensors (LIDAR, Radar, Photonic)
    numDataPoints = 100;  % Number of time-series data points

    % Simulated Data from Sensors
    time = linspace(0, 10, numDataPoints);  % Time vector for 10 seconds
    lidarData = 50 + 10 * randn(numDataPoints, numSensors);   % Simulated LIDAR Data (in meters)
    radarData = 200 + 20 * randn(numDataPoints, numSensors);  % Simulated Radar Data (in meters)
    photonicData = 5 + 2 * randn(numDataPoints, numSensors);  % Simulated Photonic Sensor Data (in lux)

    % Combine all sensor data into a single structure
    sensorData.lidar = lidarData;
    sensorData.radar = radarData;
    sensorData.photonic = photonicData;
end
