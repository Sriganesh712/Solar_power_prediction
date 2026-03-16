%% Solar Prediction Project
% Data Preprocessing

clc
clear
close all

%% 1. Load Dataset

data = readtable("solar_dataset.csv");

disp("Dataset Loaded")
disp(size(data))
head(data)

%% 2. Convert First Column to Datetime

data.datetime = datetime(data.datetime);

%% 3. Extract Time Features

data.hour = hour(data.datetime);
data.month = month(data.datetime);
data.day_of_year = day(data.datetime,'dayofyear');
data.year = year(data.datetime);

disp("Time features created")

%% 4. Check Missing Values

missing_vals = sum(ismissing(data));
disp("Missing values in dataset:")
disp(missing_vals)

% Fill missing values if present
data = fillmissing(data,'linear');

%% 5. Plot Sample Solar Pattern

sample_day = data(1:24,:);

figure
plot(sample_day.hour, sample_day.irradiance,'LineWidth',2)
xlabel("Hour")
ylabel("Solar Irradiance (W/m^2)")
title("Daily Solar Irradiance Pattern")
grid on

%% 6. Create Solar Power Output

% Assume solar panel parameters

panel_efficiency = 0.18;
panel_area = 10;  % square meters

data.power_output = data.irradiance * panel_efficiency * panel_area / 1000;

disp("Solar power output column created")

%% 7. Create Cyclic Time Features

data.hour_sin = sin(2*pi*data.hour/24);
data.hour_cos = cos(2*pi*data.hour/24);

data.day_sin = sin(2*pi*data.day_of_year/365);
data.day_cos = cos(2*pi*data.day_of_year/365);

disp("Cyclic features added")

%% 8. Remove Night Data (Optional)

data = data(data.irradiance > 0 , :);

disp("Night rows removed")

%% 9. Save Processed Dataset

writetable(data,"processed_solar_data.csv")

disp("Processed dataset saved")

%% 10. Show Final Dataset Info

disp("Final dataset size:")
disp(size(data))

disp("Columns:")
disp(data.Properties.VariableNames)