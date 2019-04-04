#how many people have benn hired after 1.1.2000
SELECT * FROM 
employees
WHERE hire_date > '2000-01-01';

#tworzenie InDEXU
CREATE INDEX i_hire_date ON employees(hire_date);

#Pracownika o imieniu Georgi Facello
SELECT * FROM employees
WHERE first_name = 'Georgi' AND last_name = 'Facello';


CREATE INDEX i_composite ON employees(first_name, last_name);

SHOW INDEX FROM employees FROM employees;