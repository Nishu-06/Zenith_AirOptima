% trainAndPredictAI.m
% Function to train AI model and predict hazards

function [predictedLabels, testLabels, trainRatio, numDataPoints] = trainAndPredictAI(fusedData)
    % Generating labels for hazards (1 = hazard, 0 = no hazard)
    % For simplicity, let's simulate this randomly for now
    numDataPoints = size(fusedData, 1);
    hazardLabels = randi([0, 1], numDataPoints, 1);

    % Split data into training and testing sets
    trainRatio = 0.7;  % 70% training, 30% testing
    trainData = fusedData(1:round(trainRatio*numDataPoints), :);
    testData = fusedData(round(trainRatio*numDataPoints)+1:end, :);
    trainLabels = hazardLabels(1:round(trainRatio*numDataPoints));
    testLabels = hazardLabels(round(trainRatio*numDataPoints)+1:end);

    % Create and train a Neural Network for hazard prediction
    hiddenLayerSize = 10;  % Number of neurons in the hidden layer
    net = feedforwardnet(hiddenLayerSize);

    % Train the network
    [net, tr] = train(net, trainData', trainLabels');

    % Predict on test data
    predictedLabels = net(testData') > 0.5;  % Thresholding at 0.5
end
