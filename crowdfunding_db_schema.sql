CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY,
 	subcategory VARCHAR
);

CREATE TABLE category (
	cat_ids VARCHAR PRIMARY KEY,
	category VARCHAR
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR,
	description VARCHAR,
	goal INT,
	pledged INT,
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launch_date DATE,
	end_date DATE,
	cat_ids VARCHAR, 
	subcategory_id VARCHAR, 
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (cat_ids) REFERENCES category(cat_ids)
);
