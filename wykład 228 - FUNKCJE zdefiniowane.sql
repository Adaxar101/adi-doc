#jakiś błąd więc to:
    SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER $$ 
CREATE FUNCTION f_emp_avg_salaray (p_emp_no INT) RETURNS DECIMAL(10,2)
BEGIN
DECLARE v_avg_salary DECIMAL(10,2);
SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees AS e
        JOIN
    salaries AS s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
    
    RETURN v_avg_salary;
    END$$
    DELIMITER ;
    
