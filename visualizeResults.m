% visualizeResults.m
% Function to visualize results of sensor data and AI predictions

function visualizeResults(fusedData, time, predictedLabels, testLabels, trainRatio, numDataPoints)
    % Real-time Visualization of Fused Data and Predictions
    figure;
    subplot(2,1,1);
    plot(time, fusedData(:, 1:5));  % Plotting fused LIDAR data as an example
    title('Fused Sensor Data'); xlabel('Time (s)'); ylabel('Normalized Data');
    legend('LIDAR 1', 'LIDAR 2', 'LIDAR 3', 'LIDAR 4', 'LIDAR 5');

    subplot(2,1,2);
    plot(time(round(trainRatio*numDataPoints)+1:end), testLabels, 'ro-', 'LineWidth', 1.5); hold on;
    plot(time(round(trainRatio*numDataPoints)+1:end), predictedLabels, 'b*-', 'LineWidth', 1.5);
    title('AI Predictions vs. Actual Hazards'); xlabel('Time (s)'); ylabel('Hazard Status');
    legend('Actual Hazards', 'Predicted Hazards');
end
