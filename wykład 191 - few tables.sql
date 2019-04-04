#Select all managers’ first and last name, hire date, job title, start date, and department name.

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
FROM
    employees AS e
        JOIN
    titles AS t ON e.emp_no = t.emp_no
        JOIN
    dept_manager AS m ON m.emp_no = e.emp_no
        JOIN
    departments AS d ON m.dept_no = d.dept_no
WHERE
    t.title = 'Manager'
ORDER BY e.emp_no;
    
    
    