import requests
import pandas as pd

LAT = 11.6643
LON = 78.1460

START_YEAR = 2001
END_YEAR = 2024

PARAMETERS = "ALLSKY_SFC_SW_DWN,T2M,RH2M,WS2M,CLOUD_AMT"

all_data = []

print("Downloading data year by year...\n")

for year in range(START_YEAR, END_YEAR + 1):

    start = f"{year}0101"
    end = f"{year}1231"

    url = (
        "https://power.larc.nasa.gov/api/temporal/hourly/point?"
        f"parameters={PARAMETERS}"
        f"&community=RE"
        f"&longitude={LON}"
        f"&latitude={LAT}"
        f"&start={start}"
        f"&end={end}"
        f"&format=JSON"
    )

    print(f"Downloading {year}...")

    response = requests.get(url)

    if response.status_code != 200:
        print(f"Failed for {year}")
        continue

    data = response.json()
    params = data["properties"]["parameter"]

    df = pd.DataFrame(params)

    all_data.append(df)
df = pd.concat(all_data)

df.index = pd.to_datetime(df.index, format="%Y%m%d%H")

df.rename(columns={
    "ALLSKY_SFC_SW_DWN": "irradiance",
    "T2M": "temperature",
    "RH2M": "humidity",
    "WS2M": "wind_speed",
    "CLOUD_AMT": "cloud_cover"
}, inplace=True)

df = df.sort_index()

df.to_csv("solar_dataset.csv")

print("\nDownload complete.")
print("Total records:", len(df))

print("\nFirst rows:\n")
print(df.head())