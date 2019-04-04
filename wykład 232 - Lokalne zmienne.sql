#jakiś błąd więc to:
    SET GLOBAL log_bin_trust_function_creators = 1;

DROP FUNCTION IF EXISTS f_emp_avg_salary;

DELIMITER $$ 
CREATE FUNCTION f_emp_avg_salary (p_emp_no INT) RETURNS DECIMAL(10,2)
BEGIN
DECLARE v_avg_salary DECIMAL(10,2);

BEGIN
	DECLARE v_avg_salary_2 DECIMAL(10,2);
END;

SELECT 
    AVG(s.salary)
INTO v_avg_salary_2 FROM
    employees AS e
        JOIN
    salaries AS s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
    
    RETURN v_avg_salary_2;
    END$$
    DELIMITER ;
    
    SELECT v_avg_salary;
