SELECT * FROM salaries;

CREATE VIEW v_avarage_salaries_off_all_managers AS
SELECT 
ROUND(AVG(salary), 2) AS avarage_salary, dm.emp_no
FROM salaries AS s
JOIN dept_manager AS dm
	ON s.emp_no = dm.emp_no;
    
