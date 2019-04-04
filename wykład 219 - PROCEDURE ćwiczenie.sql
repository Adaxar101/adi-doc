##Create a procedure that will provide the average salary of all employees.
##Then, call the procedure.
DELIMITER $$
CREATE PROCEDURE avarage_sal()
BEGIN
SELECT AVG(salary) AS avarage_salary
FROM salaries;
END$$
DELIMITER ;

CALL avarage_sal;