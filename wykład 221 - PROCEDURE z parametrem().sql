USE employees;
DROP PROCEDURE IF EXISTS emp_salary;

DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_salaray(IN p_emp_no INT) 
BEGIN
SELECT 
	e.first_name, e.last_name, s.salary, s.from_date, s.to_date
    FROM employees AS e
    JOIN salaries AS s
		ON e.emp_no = s.emp_no
	WHERE e.emp_no = p_emp_no;
    END$$
DELIMITER ;


##średnia zaróbków podczas kariery
USE employees;
DROP PROCEDURE IF EXISTS emp_salary;

DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_avg_salaray(IN p_emp_no INT) 
BEGIN
SELECT 
	e.first_name, e.last_name, AVG(s.salary)
    FROM employees AS e
    JOIN salaries AS s
		ON e.emp_no = s.emp_no
	WHERE e.emp_no = p_emp_no;
    END$$
DELIMITER ;

##2 parametry(wejściowy i wyjściowy)
#za każdym razem jak tworzymy PARAMETR OUT to musimy użyć SELECT INTO. INTO dajemy do tego co w OUT daliśmy
DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_avg_salaray_out(IN p_emp_no INT, out p_avg_salary DECIMAL(10,2)) 
BEGIN
SELECT 
	AVG(s.salary)
INTO p_avg_salary                  
    FROM employees AS e
    JOIN salaries AS s
		ON e.emp_no = s.emp_no
	WHERE e.emp_no = p_emp_no;
    END$$
DELIMITER ;


        

        