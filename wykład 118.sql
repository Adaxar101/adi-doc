use employees;

SELECT emp_no, COUNT(emp_no) as count_empl
FROM dept_emp
WHERE from_date < '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1
ORDER BY emp_no;



