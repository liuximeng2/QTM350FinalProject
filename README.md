# QTM350FinalProject

## Data Preprocessing

### Overview
This section describes the preprocessing workflow for the dataset. The data originates from three CSV files, each containing indicators for various economies and years. The workflow combines, filters, and structures the data into a format suitable for analysis.

### Steps

#### 1. Loading the Data
- The raw data is stored in three CSV files, each containing the following columns:
  - **`economy`**: The country or economy to which the data pertains.
  - **`time`**: The year of the data in the format `YRXXXX` (e.g., `YR2023` for the year 2023).
  - **`indicator`**: A unique code representing a specific measure (e.g., GDP, employment rate).
  - **`value`**: The numeric value of the indicator for the corresponding economy and year.

#### 2. Combining Data
- All three datasets are merged into a single table using SQL. The `UNION ALL` operation is used to ensure that all rows from each file are included.

#### 3. Extracting the Year
- The `time` column is processed to extract the numeric year (e.g., `YR2023` → `2023`).
- This standardizes the year format and facilitates filtering by a specific range.

#### 4. Filtering Data
- Data is filtered based on:
  - **Selected Economies**: A list of countries or economies (e.g., `USA`, `CHN`, `MEX`).
  - **Year Range**: A specific range of years (e.g., 2017–2023).

#### 5. Pivoting Indicators
- Each unique indicator is converted into a separate column.
- The final dataset includes nine indicator-value pairs as individual columns.
- Each row represents a unique economy and year combination.
- Data for each economy and year is grouped together.
- For each indicator, the maximum value (if duplicates exist) is selected to maintain consistency.

#### 6. Final Output
- The preprocessed dataset includes the following columns:
  - **`economy`**: The country or economy name.
  - **`year`**: The numeric year of the data.
  - **Nine Indicator-Value Pairs**: Each indicator is represented by a separate column, along with its value.
- Example output:

| economy | year | Indicator_1 | Indicator_2 | Indicator_3 | ... | Indicator_9 |
|---------|------|-------------|-------------|-------------|-----|-------------|
| USA     | 2017 | 95.3        | 4.5         | 102.1       | ... | 87.6        |
| USA     | 2018 | 96.1        | 4.8         | 104.5       | ... | 88.2        |
| CAN     | 2017 | 93.7        | 4.2         | 100.2       | ... | 85.3        |


#### 7. Reproduction
Run the `script/data_preprocess.ipynb` script for the clean dataset. The final dataset is saved as a structured CSV file (`data/clean_data.csv`) for further analysis. To change country of interest and timespan, make corresponding adjustments in the `script/extract_data.sql` file.
