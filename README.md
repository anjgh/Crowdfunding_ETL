# Crowdfunding_ETL
This project works on building an ETL pipeline using Python, Pandas, and Python dictionary methods to extract and tranform the data. After transforming the data, four CSV files were created to make an ERD and table schema. Lastly, uploading the CSV files into a postgres database. 

# Getting Started
The `final.ipynb` notebook consolidates the contents of both `ammar.ipynb` and `anjila.ipynb`. Please be aware that the cells from `anjila.ipynb` and `ammar.ipynb` are duplicated within this merged notebook. To access the content from `ammar.ipynb`, you will need to scroll past the repeated cells.

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
git clone https://github.com/anjgh/Crowdfunding_ETL.git cd final.ipynb conda create -n elt_venv python=3.10 anaconda -y conda activate etl_venv jupyter notebook

If contributing, clone the repo and create a new branch for your changes: git checkout -b feature/your-feature After making your changes, submit a pull request for review.

## Description of ETL Mini Project
I started with a crowdfunding Excel file and split the "Category & Sub-Category" column into two separate columns: "Category" and "Sub-Category". Using NumPy, I created two arrays: `category_ids` and `subcategory_ids`. Through list comprehension, I prefixed each ID in the arrays with "cat" or "subcat" respectively. These arrays were then used to construct two dataframes: `category_df` and `subcategory_df`, which were exported as `category.csv` and `subcategory.csv`.

Next, I made a copy of the original crowdfunding dataframe and named it `campaign_df`. Data cleaning steps included renaming columns and converting data types for `goal`, `pledged`, `launched_date`, and `end_date`. I performed two merges on `campaign_df`: one to add `category_id` from `category_df` and another to add `subcategory_id` from `subcategory_df`. This added two new columns: `category_id` and `subcategory_id`. Finally, I dropped five unnecessary columns and exported the cleaned dataframe as `campaign.csv`. 


The Contacts Dataframe was created using Pandas. Due to the nature of the data in the contacts csv file, the json.loads function was used to effectively parse the data and display all the rows. Next a Pandas Dataframe was created with the relevant columns, to list the data accordingly.

The values in the name column were separated into first and last names using the split function, and the original name column was dropped. The data was then further cleaned and modified by rearranging the columns in a more suitable manner. Once the cleaning was complete, the cleaned data was finally exported as a csv file.
