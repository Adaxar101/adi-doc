#Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date. 
#Use the old type of join syntax to obtain the result.

DESC employees;

SELECT 
	e.emp_no,
    e.first_name,
    e.last_name,
    e.hire_date,
    d.dept_no
FROM 
	dept_manager AS d,
    employees AS e
WHERE d.emp_no = e.emp_no;

#NEW SYNTAX JOIN
SELECT 
    e.emp_no, e.first_name, e.last_name, e.hire_date, d.dept_no
FROM
    employees AS e
        RIGHT JOIN
    dept_manager AS d ON d.emp_no = e.emp_no;
        
        

#Inne ćwiczenie
SELECT 
    e.emp_no, e.first_name, e.last_name, s.salary
FROM
    employees AS e
        JOIN
    salaries AS s ON e.emp_no = s.emp_no
WHERE
    s.salary > 145000
ORDER BY s.salary;

################333
SELECT 
    e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees AS e
        JOIN
    titles AS t ON e.emp_no = t.emp_no
WHERE
    e.first_name = 'Margareta'
        AND e.last_name = 'Markovitch';


