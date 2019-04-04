/*Similar to the exercises done in the lecture, obtain a result set containing the employee number, first name, and last name of all employees with a number higher than 109990. 
Create a fourth column in the query, indicating whether this employee is also a manager, according to the data provided in the dept_manager table, or a regular employee. */

SELECT
e.emp_no,
e.first_name, 
e.last_name,
CASE 
WHEN dm.emp_no IS NOT NULL THEN 'Manager'
ELSE 'Employee'
END AS is_manager 
FROM employees AS e
LEFT JOIN dept_manager AS dm
ON e.emp_no = dm.emp_no
WHERE e.emp_no > 109990
ORDER BY e.emp_no;

#ćwiczenie 2
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_diference,
    CASE
        WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'The salary is higher than $30000'
        ELSE 'NOT'
    END AS salary_incrase
FROM
    dept_manager AS dm
        JOIN
    employees AS e ON e.emp_no = dm.emp_no
        JOIN
    salaries AS s ON s.emp_no = dm.emp_no
GROUP BY s.emp_no;
    
    #Ćwicznie 3
SELECT
e.emp_no,
e.first_name, 
e.last_name,
CASE
	WHEN de.to_date < SYSDATE() THEN 'Not an employee anymore'
    ELSE 'Is still employed'
    END AS current_employee
    FROM employees AS e
    JOIN dept_emp AS de
    ON e.emp_no = de.emp_no
    GROUP BY e.emp_no
    LIMIT 100;
    
    SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN MAX(de.to_date) > SYSDATE() THEN 'Is still employed'
        ELSE 'Not an employee anymore'
    END AS current_employee
FROM
    employees e
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
GROUP BY de.emp_no
LIMIT 100;
    
    
    SELECT * FROM dept_manager, employees;
    