use employees;

SELECT 
    d.dept_name, AVG(salary) AS avarage_salary
FROM
    departments AS d
        JOIN
    dept_manager AS dm ON d.dept_no = dm.dept_no
        JOIN
    salaries AS s ON s.emp_no = dm.emp_no
GROUP BY d.dept_name
ORDER bY avarage_salary
;

#How many male and how many female managers do we have in the ‘employees’ database?
SELECT * FROM employees;

SELECT e.gender, COUNT(dm.emp_no) AS count_managers
FROM employees AS e
JOIN dept_manager AS dm
	ON e.emp_no = dm.emp_no
GROUP BY e.gender;


    