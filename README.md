# Crowdfunding_ETL

## Description of ETL Mini Project
I started with a crowdfunding Excel file and split the "Category & Sub-Category" column into two separate columns: "Category" and "Sub-Category". Using NumPy, I created two arrays: `category_ids` and `subcategory_ids`. Through list comprehension, I prefixed each ID in the arrays with "cat" or "subcat" respectively. These arrays were then used to construct two dataframes: `category_df` and `subcategory_df`, which were exported as `category.csv` and `subcategory.csv`.

Next, I made a copy of the original crowdfunding dataframe and named it `campaign_df`. Data cleaning steps included renaming columns and converting data types for `goal`, `pledged`, `launched_date`, and `end_date`. I performed two merges on `campaign_df`: one to add `category_id` from `category_df` and another to add `subcategory_id` from `subcategory_df`. This added two new columns: `category_id` and `subcategory_id`. Finally, I dropped five unnecessary columns and exported the cleaned dataframe as `campaign.csv`. 
