% fuseData.m
% Function to fuse sensor data

function fusedData = fuseData(sensorData)
    % Extract data from the structure
    lidarData = sensorData.lidar;
    radarData = sensorData.radar;
    photonicData = sensorData.photonic;
    
    % Data Fusion: Combining LIDAR, Radar, and Photonic Data
    fusedData = [lidarData, radarData, photonicData];

    % Standardize the fused data for AI model input
    fusedData = (fusedData - mean(fusedData)) ./ std(fusedData);
end
