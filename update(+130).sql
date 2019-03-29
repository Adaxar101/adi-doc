use employees;

SELECT * FROM departments
ORDER BY dept_name; 

UPDATE departments
SET dept_name = 'Data Analysis'
WHERE dept_name = 'Business Analysis';

DELETE FROM departments
WHERE dept_no = 'd010';