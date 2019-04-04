use sales;



SELECT*FROM sales;

SELECT sales.item_code FROM sales;


CREATE TABLE companies (
	company_id VARCHAR(255) PRIMARY KEY, 
    company_name VARCHAR(255) DEFAULT 'X',
    phone_number INT(11) UNIQUE);
    
    DROP TABLE companies;