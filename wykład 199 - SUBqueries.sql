SELECT * FROM dept_manager;

#select first and last name from 'Employees' for the same employee numbers that can be found in "Department Manager" Table.
SELECT 
    e.first_name, e.last_name
FROM
    employees AS e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager AS dm);
				
	##Extract the information about all department managers who were hired between the 1st of January 1990 and the 1st of January 1995.
    SELECT * 
    FROM dept_manager AS dm
    WHERE emp_no IN (SELECT
					emp_no 
                    FROM employees AS e
        WHERE dm.from_date BETWEEN '1990-01-01' AND '1995-01-01')
        ORDER BY from_date;
        
SELECT 
    dm.emp_no, e.last_name
FROM
    dept_manager_dup AS dm
     JOIN
    employees_dup AS e 
    ON dm.emp_no = e.emp_no
WHERE
    dm.from_date BETWEEN '1990-01-01' AND '8888-01-01'
GROUP BY dm.from_date;

#Select the entire information for all employees whose job title is “Assistant Engineer”. 
#Hint: To solve this exercise, use the 'employees' table.

SELECT 
    *
FROM
    employees AS e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles AS t
        WHERE
            t.title = 'Assistant Engineer' AND t.emp_no = e.emp_no);



SELECT * FROM dept_emp;
                    