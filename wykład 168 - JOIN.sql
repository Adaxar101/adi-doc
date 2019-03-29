SELECT 
    M.emp_no, M.dept_no, D.dept_name
FROM
    dept_manager_dup AS M
        INNER JOIN
    departments_dup AS D ON M.dept_no = D.dept_no;
    GROUP BY M.emp_no
ORDER BY M.dept_no;


#inne ćwiczenie
  desc employees;
  
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees AS e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;
    
    
  