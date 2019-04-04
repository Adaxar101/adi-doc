SELECT 
	emp_no, 
    first_name,
    last_name,    #ważny przecinek!
CASE 
	WHEN gender = 'M' THEN 'MALE'
    ELSE 'FEMALE'
    END AS gender
FROM employees;

#ćwiczenie 1 inne rozwiązanie
SELECT 
	emp_no, 
    first_name,
    last_name,    #ważny przecinek!
CASE gender
	WHEN 'M' THEN 'MALE'
    ELSE 'FEMALE'
    END AS gender
FROM employees;

#ćwiczenie 2
SELECT 
e.emp_no,
e.first_name,
e.last_name,
CASE 
WHEN dm.emp_no IS NOT NULL THEN 'Manager'
ELSE 'Employee'
END AS is_manager
FROM
employees AS e
LEFT JOIN
dept_manager AS dm 
ON dm.emp_no = e.emp_no
WHERE e.emp_no > 109990;

#inne rozwiązanie ćwiczenie 2
SELECT 
e.emp_no,
e.first_name,
e.last_name,
CASE dm.emp_no
WHEN  NOT NULL THEN 'Manager'
ELSE 'Employee'
END AS is_manager
FROM
employees AS e
LEFT JOIN
dept_manager AS dm 
ON dm.emp_no = e.emp_no
WHERE e.emp_no > 109990;
/* Wynik nie będzie poprawny ponieważ wartość NULL i NOT NULL nie są wartościami, do których można cokolwiek przyrównać. Dlatego w tym przypadku należy zrobić jak w ćwiczeniu 2*/

#ćwiczenie 3 
SELECT
	emp_no, 
    first_name,
    last_name, 
    IF(gender = 'M', 'Male', 'Female') AS gender
    FROM employees;
    
#ćwicznie 4
SELECT 
	dm.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_diferance,
    CASE
    WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'Salary was raised by more than $30,000'
    WHEN MAX(s.salary) - MIN(s.salary) BETWEEN 20000 AND 30000 THEN 'Salary was raised by more than $20,000 but less than #30,000'
    ELSE 'Salary was raised by less than $20,000'
    END AS salary_incrase
    FROM dept_manager AS dm
    JOIN 
    employees AS e ON e.emp_no = dm.emp_no
    JOIN
    salaries AS s ON s.emp_no = dm.emp_no
    GROUP bY s.emp_no;
    