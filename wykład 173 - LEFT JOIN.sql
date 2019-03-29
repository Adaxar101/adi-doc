#ewmove the dulpicates from two tabels
DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';

#add back the initial records
INSERT INTO dept_manager_dup
VALUES('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES('d009', 'Customer Service');

#LEFT JOIN
SELECT 
    M.emp_no, M.dept_no, D.dept_name
FROM
    dept_manager_dup AS M
        LEFT JOIN
    departments_dup AS D ON M.dept_no = D.dept_no
GROUP BY M.emp_no
ORDER BY M.dept_no;

#ĆWICZENIA!!!
DESC employees;

DESC dept_manager;

SELECT e.first_name, e.last_name, d.emp_no, d.dept_no
FROM employees AS e
LEFT JOIN dept_manager AS d
ON e.emp_no = d.emp_no
WHERE e.last_name = 'Markovitch'
ORDER BY d.dept_no DESC, e.emp_no;


