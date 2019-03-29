SELECT * FROM departments_dup;

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');

SELECT * FROM departments_dup 
ORDER BY dept_no ASC;

ALTER TABLE employees.departments_dup 
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;

COMMIT;




