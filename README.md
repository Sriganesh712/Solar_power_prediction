# ☀️ Solar Power Forecast & Prediction System

![MATLAB](https://img.shields.io/badge/MATLAB-RandomForest-orange)
![Dataset](https://img.shields.io/badge/Dataset-NASA%20POWER-blue)
![License](https://img.shields.io/badge/License-MIT-green)

A machine learning–based **solar energy forecasting system** built in **MATLAB** using historical meteorological data from the **NASA POWER dataset**.  
The system predicts solar power potential by training a **Random Forest regression model** on **24 years of hourly environmental data** for a specific geographic location.

This project demonstrates a complete **data science pipeline including data collection, preprocessing, feature engineering, model training, and prediction**.

---

# 📑 Table of Contents

- Overview
- Features
- Dataset
- System Architecture
- Machine Learning Model
- Installation
- Usage
- Project Structure
- Model Performance
- Future Improvements
- License

---

# 🎯 Overview

Solar power generation depends heavily on **environmental conditions** such as:

- Solar radiation
- Temperature
- Cloud cover
- Atmospheric conditions

This project builds a **solar power prediction model** using historical weather and solar radiation data obtained from the **NASA POWER API**.

The system processes **24 years of hourly data**:

```
24 years × 365 days × 24 hours ≈ 210,240 data records
```

Using this dataset, a **Random Forest machine learning model** is trained in MATLAB to predict solar power potential.

This system can help with:

- Solar energy planning
- Renewable energy research
- Grid load forecasting
- Smart energy systems

---

# ✨ Features

### ☀️ Long-Term Solar Dataset
Uses **24 years of historical hourly solar radiation data** from NASA POWER.

### 📊 Data Preprocessing
Includes preprocessing steps such as:

- Handling missing values
- Normalizing features
- Data cleaning
- Feature extraction

### 🤖 Machine Learning Model
Implements a **Random Forest Regression model** for solar power prediction.

### 📈 Forecasting Capability
Predicts solar energy generation potential based on environmental conditions.

### 📉 Data Visualization
Includes MATLAB plots for:

- Solar radiation trends
- Time-series visualization
- Prediction comparison

---

# 📡 Dataset

## Source

Dataset obtained from:

NASA POWER (Prediction Of Worldwide Energy Resources)

https://power.larc.nasa.gov/

---

## Data Coverage

- Location-specific solar data
- 24 years of historical records
- Hourly measurements

---

## Total Records

```
24 years
365 days per year
24 hours per day

Total samples ≈ 210,240
```

---

## Features Used

Typical dataset features include:

| Feature | Description |
|------|------|
| Solar Radiation | Solar energy received |
| Temperature | Ambient temperature |
| Relative Humidity | Atmospheric moisture |
| Wind Speed | Wind conditions |
| Atmospheric Pressure | Air pressure |
| Hour | Time of day |
| Day of Year | Seasonal indicator |

---

# 🏗 System Architecture

```
NASA POWER Dataset
        │
        ▼
Data Collection
        │
        ▼
Data Preprocessing
(Cleaning & Feature Engineering)
        │
        ▼
MATLAB Machine Learning Pipeline
        │
        ▼
Random Forest Regression Model
        │
        ▼
Solar Power Prediction
```

---

# 🤖 Machine Learning Model

## Model Used

Random Forest Regression

Random Forest is an ensemble learning method that builds multiple decision trees and averages their outputs.

Advantages:

- Handles large datasets well
- Robust to noise
- Good performance on nonlinear data
- Low overfitting compared to single decision trees

---

## Model Training Process

1. Load dataset into MATLAB
2. Perform preprocessing
3. Split data into:
   - Training set
   - Testing set
4. Train Random Forest model
5. Evaluate prediction accuracy

Example MATLAB workflow:

```
Load Dataset
    ↓
Preprocess Data
    ↓
Feature Engineering
    ↓
Train Random Forest Model
    ↓
Evaluate Model
    ↓
Generate Predictions
```

---

# ⚙️ Installation

## Requirements

- MATLAB (R2021 or later recommended)
- Statistics and Machine Learning Toolbox

---

## Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/solar-power-prediction.git
cd solar-power-prediction
```

---

# 🚀 Usage

## Step 1 — Open MATLAB

Open MATLAB and navigate to the project folder.

---

## Step 2 — Load Dataset

Load the NASA POWER dataset file.

Example:

```matlab
data = readtable('solar_dataset.csv');
```

---

## Step 3 — Run Preprocessing Script

```matlab
preprocess_data.m
```

This script:

- Cleans dataset
- Normalizes features
- Prepares training data

---

## Step 4 — Train Model

Run the model training script:

```matlab
train_random_forest.m
```

This script:

- Splits training/testing data
- Trains Random Forest model
- Saves trained model

---

## Step 5 — Generate Predictions

Run:

```matlab
predict_solar_power.m
```

This will generate predictions for solar energy output.

---

# 📊 Model Performance

Example evaluation metrics:

| Metric | Value |
|------|------|
| MAE | TBD |
| RMSE | TBD |
| R² Score | TBD |

*(Update with actual results after testing.)*

---

# 📁 Project Structure

```
solar-power-prediction/
│
├── dataset/
│   ├── nasa_power_data.csv
│
├── preprocessing/
│   ├── preprocess_data.m
│
├── models/
│   ├── random_forest_model.mat
│
├── training/
│   ├── train_random_forest.m
│
├── prediction/
│   ├── predict_solar_power.m
│
├── visualization/
│   ├── plot_results.m
│
├── README.md
└── LICENSE
```

---

# 📈 Example Output

Example predictions include:

- Solar radiation trends
- Predicted solar energy generation
- Time series comparison between predicted and actual values

Example plots:

- Solar radiation vs time
- Prediction accuracy graphs
- Seasonal solar variation charts

*(Add screenshots here later)*

---

# 🔮 Future Improvements

Possible enhancements for this project:

- Deep learning models (LSTM / GRU)
- Real-time solar prediction system
- Weather API integration
- Solar panel output estimation
- Deployment as a web dashboard
- Integration with smart grid systems

---

# 🌍 Applications

This system can be used for:

- Solar farm planning
- Renewable energy research
- Smart energy management
- Energy forecasting systems
- Sustainable energy projects

---

# 📄 License

This project is licensed under the **MIT License**.

You are free to:

- Use the project
- Modify the code
- Distribute the software

With the condition that the license is included.

---

# 👨‍💻 Author

**Sriganesh R**  
Electronics and Communication Engineering  
SASTRA University  

GitHub:  
https://github.com/Sriganesh712

---

# ⭐ If you like this project

Please consider **starring the repository** to support the project.