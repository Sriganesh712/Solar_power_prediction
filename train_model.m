clc
clear
close all

%% Load processed dataset

data = readtable("processed_solar_data.csv");

%% Define input features

X = data(:,{'hour','month','day_of_year',...
            'temperature','humidity','wind_speed','cloud_cover'});

%% Target variable

Y = data.power_output;

%% Train/Test Split

cv = cvpartition(height(data),'HoldOut',0.2);

Xtrain = X(training(cv),:);
Ytrain = Y(training(cv),:);

Xtest = X(test(cv),:);
Ytest = Y(test(cv),:);

%% Train Random Forest Model

model = fitrensemble(Xtrain,Ytrain);

disp("Model Training Complete")

%% Prediction

predictions = predict(model,Xtest);

%% Accuracy Metrics

rmse = sqrt(mean((Ytest - predictions).^2));

disp("RMSE:")
disp(rmse)

%% Plot Actual vs Predicted
figure

plot(Ytest,'LineWidth',2)
hold on
plot(predictions,'LineWidth',2)

legend("Actual Power","Predicted Power")
xlabel("Samples")
ylabel("Solar Power (kW)")
title("Solar Power Prediction vs Actual")

grid on

%% Save Model

save("solar_prediction_model.mat","model")