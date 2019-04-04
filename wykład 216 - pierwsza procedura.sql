## pierwsza procedura
DROP PROCEDURE IF EXISTS 1000_employees;

DELIMITER $$
CREATE PROCEDURE 1000_employees()
BEGIN
SELECT * FROM employees 
LIMIT 1000;
END $$
DELIMITER ;

call employees.1000_employees();
call 1000_employees; 