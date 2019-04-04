SELECT * FROM emp_manager AS em
ORDER BY em.emp_no;

SELECT 
e1.* 
FROM emp_manager AS e1
JOIN
emp_manager AS e2 
ON e1.emp_no = e2.manager_no;
