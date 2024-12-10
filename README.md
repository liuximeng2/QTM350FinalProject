# QTM350 Final Project

This repository contains the final project for QTM 350, focusing on data preprocessing and analysis of economic indicators across various countries and years.

## Repository Structure

The repository is organized into the following directories and files:

- **data/**: Contains raw and processed datasets used in the analysis.
- **documentation/**: Includes codebook and and the entity-relationship diagram.
- **figures/**: Stores visualizations and figures generated during the analysis.
- **script/**: Houses scripts for data download, preprocessing, and analysis in jupyter notebook format. It also contains the SQL query for the data selection.
- **QuartoReport.qmd**: The Quarto markdown file for the project report.
- **QuartoReport.html**: The rendered HTML version of the project report.

## How to Run the Code

1. **Clone the Repository/Navigate to the Repo's directory**:

   ```bash
   git clone https://github.com/liuximeng2/QTM350FinalProject.git
   cd QTM350FinalProject
   ```
2. **Setup the Code Environment Dependencies**:

     ```bash
    python -m venv env
    source env/bin/activate  # On Windows, use `env\Scripts\activate`
    pip install -r requirements.txt
    ```
3. **Run the code**
   You can either activate the kernal and run the codes by blocks inside the notebook, or run the below commands:
   ```bash
   jupyter notebook script/data_download.ipynb
   jupyter notebook script/data_preprocess.ipynb
   jupyter notebook script/data_analysis.ipynb
   ```
