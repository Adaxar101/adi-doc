use employees;

SELECT * FROM salaries;



SELECT 
	SUM(salary)
    FROM salaries
    WHERE to_date > '1997-01-01';