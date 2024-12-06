CREATE TABLE CATEGORY (
    category_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(20)
);

CREATE TABLE SUBCATEGORY (
    subcategory_id VARCHAR(20) PRIMARY KEY,
    sub_category VARCHAR(20)
);

CREATE TABLE CAMPAIGN (
    cd_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(20),
    description VARCHAR(40),
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(5),
    currency VARCHAR(5),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(20) REFERENCES CATEGORY(category_id),
    subcategory_id VARCHAR(20) REFERENCES SUBCATEGORY(sub)
);
CREATE TABLE CONTACTS_CLEANED (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50)
);
