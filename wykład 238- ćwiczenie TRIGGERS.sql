
COMMIT;

DELIMITER $$

CREATE TRIGGER trig_hire_date3
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
	IF NEW.hire_date > date_format(SYSDATE(), '%Y-%m-%d') THEN
    SET NEW.hire_date = date_format(SYSDATE(), '%Y-%m-%d');
    END IF;
    END$$
DELIMITER ;



INSERT employees VALUES ('999933', '1994-06-20', 'Adam', 'Gajda', 'M', '2020-12-12');

INSERT employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');

ROLLBACK; 