#Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.
SELECT 
	dm.*, d.*
    FROM dept_manager AS dm
    CROSS JOIN departments AS d
    WHERE d.dept_no = 'd009'
    ORDER BY d.dept_name;
    
    #Return a list with the first 10 employees with all the departments they can be assigned to.
    SELECT * FROM employees;
    
SELECT 
	e.*, d.*
FROM employees AS e
CROSS JOIN departments AS d
WHERE e.emp_no < 10011
ORDER BY e.emp_no, d.dept_name ;

