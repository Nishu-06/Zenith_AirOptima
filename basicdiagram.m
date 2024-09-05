% Diagram of Airport Layout
figure;
hold on;

%  Runway
rectangle('Position', [2, 4, 12, 1], 'FaceColor', [0.6, 0.6, 0.6], 'EdgeColor', 'k');
text(8, 4.5, 'Runway', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');

%  Taxiways
rectangle('Position', [0, 2, 2, 0.5], 'FaceColor', [0.8, 0.8, 0.8], 'EdgeColor', 'k');
rectangle('Position', [14, 2, 2, 0.5], 'FaceColor', [0.8, 0.8, 0.8], 'EdgeColor', 'k');
rectangle('Position', [6, 0.5, 1, 2], 'FaceColor', [0.8, 0.8, 0.8], 'EdgeColor', 'k');
text(1, 2.25, 'Taxiway A', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
text(15, 2.25, 'Taxiway B', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
text(6.5, 0.25, 'Taxiway C', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');

%  Sensors
numSensors = 8;
sensorX = [3, 5, 7, 9, 11, 13, 4, 10];
sensorY = [4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 3, 3];
plot(sensorX, sensorY, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
for i = 1:numSensors
    text(sensorX(i), sensorY(i) + 0.1, sprintf('Sensor %d', i), 'HorizontalAlignment', 'center');
end

%  Data Fusion Hub
plot(8, 5.5, 'bs', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
text(8, 5.8, 'Data Fusion Hub', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');

% Connect Sensors to Data Fusion Hub
for i = 1:numSensors
    plot([sensorX(i), 8], [sensorY(i), 5.5], 'k--');
end

%  Aircraft Paths
plot([6, 6], [4, 6], 'g--', 'LineWidth', 1.5);
plot([9, 9], [4, 6], 'g--', 'LineWidth', 1.5);
text(6, 6.2, 'Aircraft Path 1', 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'Color', 'g');
text(9, 6.2, 'Aircraft Path 2', 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'Color', 'g');

%  Axis Limits and Labels
xlim([-1, 16]);
ylim([-1, 7]);
xlabel('X Position (meters)');
ylabel('Y Position (meters)');
title('Airport Layout Diagram');
axis equal;
grid on;
hold off;
