# Crowdfunding_ETL
This project works on building an ETL pipeline using Python, Pandas, and Python dictionary methods to extract and tranform the data. After transforming the data, four CSV files were created to make an ERD and table schema. Lastly, uploading the CSV files into a postgres database. 

# Getting Started
## Installation
Make sure you have the following software installed:
- Python 3.7+: The programming language used for this project
- pip: Python package installer (usually included with Python)
- Anaconda: Download conda 22.9.0 or later
- Jupyter Notebook: For running and exploring the notebooks
  
Create a virtual environment conda create -n etl_venv python=3.10 anaconda -y

Activate the etl_venv virtual environment conda activate etl_venv

Install the necessary dependencies:
- pandas
- numpy

## Development
git clone https://github.com/anjgh/Crowdfunding_ETL.git cd ETL_Mini_Project_AGhimire_AKhan_TSiddiqui conda create -n elt_venv python=3.10 anaconda -y conda activate etl_venv jupyter notebook

If contributing, clone the repo and create a new branch for your changes: git checkout -b feature/your-feature After making your changes, submit a pull request for review.
# Crowdfunding_ETL
This project works on building an ETL pipeline using Python, Pandas, and Python dictionary methods to extract and tranform the data. After transforming the data, four CSV files were created to make an ERD and table schema. Lastly, uploading the CSV files into a postgres database. 

# Getting Started
## Installation
Make sure you have the following software installed:
- Python 3.7+: The programming language used for this project
- pip: Python package installer (usually included with Python)
- Anaconda: Download conda 22.9.0 or later
- Jupyter Notebook: For running and exploring the notebooks
  
Create a virtual environment conda create -n etl_venv python=3.10 anaconda -y

Activate the etl_venv virtual environment conda activate etl_venv

Install the necessary dependencies:
- pandas
- numpy

## Development
git clone https://github.com/anjgh/Crowdfunding_ETL.git cd ETL_Mini_Project_AGhimire_AKhan_TSiddiqui conda create -n elt_venv python=3.10 anaconda -y conda activate etl_venv jupyter notebook

If contributing, clone the repo and create a new branch for your changes: git checkout -b feature/your-feature After making your changes, submit a pull request for review.

## Description of ETL Mini Project
I started with a crowdfunding Excel file and split the "Category & Sub-Category" column into two separate columns: "Category" and "Sub-Category". Using NumPy, I created two arrays: `category_ids` and `subcategory_ids`. Through list comprehension, I prefixed each ID in the arrays with "cat" or "subcat" respectively. These arrays were then used to construct two dataframes: `category_df` and `subcategory_df`, which were exported as `category.csv` and `subcategory.csv`.

Next, I made a copy of the original crowdfunding dataframe and named it `campaign_df`. Data cleaning steps included renaming columns and converting data types for `goal`, `pledged`, `launched_date`, and `end_date`. I performed two merges on `campaign_df`: one to add `category_id` from `category_df` and another to add `subcategory_id` from `subcategory_df`. This added two new columns: `category_id` and `subcategory_id`. Finally, I dropped five unnecessary columns and exported the cleaned dataframe as `campaign.csv`. 
