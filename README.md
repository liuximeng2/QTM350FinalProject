# **QTM 350 Final Project**

### **Team Members:**  
**Minsol Kim** | **Olivia Moody** | **Simon Liu**

---

## **Project Overview**  
Our project leverages the **World Bank's extensive dataset** of economic and population indicators to analyze and compare trends between **developed** and **developing countries**.  

By exploring key indicators such as:  
- **GDP per capita**  
- **Life expectancy**  
- **Population growth**  
- **Education levels**  
- **Healthcare access**  

We aim to uncover patterns and relationships that differentiate or connect the two groups.  

Through **statistical models**, we will identify:  
- Significant **correlations** and **causal relationships**  
- Insights into how **economic policies** and **demographic factors** interact across varying stages of development  

This project contributes to a better understanding of **global disparities** and informs strategies for **sustainable growth** and **social equity**.

---

## **Repository Structure**

The repository is organized into the following directories and files:

- **[`data/`](data/)**: Contains raw and processed datasets used in the analysis.  
- **[`documentation/`](documentation/)**: Includes the codebook and the entity-relationship diagram.  
- **[`figures/`](figures/)**: Stores visualizations and figures generated during the analysis.  
- **[`script/`](script/)**: Houses scripts for data download, preprocessing, and analysis in Jupyter Notebook format. Also includes the SQL query used for data selection.  
- **[`QuartoReport.qmd`](QuartoReport.qmd)**: The Quarto Markdown file for the project report.  
- **[`QuartoReport.html`](QuartoReport.html)**: The rendered HTML version of the project report.  


---

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
