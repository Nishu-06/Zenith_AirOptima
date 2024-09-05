% main.m
% Main script for the Real-Time Data Fusion and AI-Driven Decision-Making System

% Step 1: Simulate Sensor Data
disp('Simulating sensor data...');
[sensorData, time] = simulateSensorData();

% Step 2: Fuse Sensor Data
disp('Fusing sensor data...');
fusedData = fuseData(sensorData);

% Step 3: Train AI Model and Predict Hazards
disp('Training AI model and predicting hazards...');
[predictedLabels, testLabels, trainRatio, numDataPoints] = trainAndPredictAI(fusedData);

% Step 4: Visualize Results
disp('Visualizing results...');
visualizeResults(fusedData, time, predictedLabels, testLabels, trainRatio, numDataPoints);

disp('Process completed.');
