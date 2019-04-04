dsadsa
use sales;companies
DROP TABLE sales;
CREATE TABLE IF NOT exists sales (
	purchase_number INT NOT NULL PRIMARY KEY auto_increment,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
    );

CREATE TABLE customers (
	customer_id INT NOT NULL PRIMARY KEY auto_increment,
	first_name VARCHAR(15),
    last_name VARCHAR(15), 
    email_adress VARCHAR(255),
    number_of_complaints INT
    );
    
CREATE TABLE items (
	item_id VARCHAR(255) PRIMARY KEY,
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    company_id VARCHAR(255)
    );
    
CREATE TABLE companies (
	company_id VARCHAR(255) NOT NULL PRIMARY KEY,
    company_name VARCHAR(255),
    headquarters_phone_number INT(12)
    );
    








