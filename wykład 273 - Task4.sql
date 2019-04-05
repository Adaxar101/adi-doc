
DROP PROCEDURE IF EXISTS av_salary;

DELIMITER $$
CREATE PROCEDURE av_salary (IN p_min_salary FLOAT, IN p_max_salary FLOAT)
BEGIN
	SELECT 
		e.gender,
		d.dept_name,
		AVG(s.salary) AS salary
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON d.dept_no = de.dept_no
    WHERE s.salary BETWEEN p_min_salary AND p_max_salary
GROUP BY d.dept_no, e.gender;
END$$
    DELIMITER ;

CALL av_salary(50000, 90000);
