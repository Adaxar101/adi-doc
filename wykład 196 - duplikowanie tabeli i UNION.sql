# create employees_dup
DROP TABLE IF EXISTS employees_dup;
CREATE TABLE employees_dup (
	emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
    );
    
#duplicate structure of the 'employees' table

INSERT INTO employees_dup
SELECT 
	e.*
FROM employees AS e
LIMIT 20;

# CHECK
SELECT * FROM employees_dup;

-- Union VS UNION ALL
#Union działa inaczej niż JOIN, nie muszą być te same tabele, ale MUSZĄ BYĆ te same TYPY i NAZWY TABEL. Jeżeli nie ma to należy dodać je z wartościami NULL.
SELECT 
	e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM employees_dup AS e
WHERE e.emp_no = 10001
UNION ALL SELECT
	NULL AS emp_no, 
    NULL AS first_name,
    NULL AS last_name,
    dm.dept_no,
    dm.from_date
FROM dept_manager AS dm;

SELECT

    *

FROM

    (SELECT

        e.emp_no,

            e.first_name,

            e.last_name,

            NULL AS dept_no,

            NULL AS from_date

    FROM

        employees e

    WHERE

        last_name = 'Denis' UNION SELECT

        NULL AS emp_no,

            NULL AS first_name,

            NULL AS last_name,

            dm.dept_no,

            dm.from_date

    FROM

        dept_manager dm) as a

ORDER BY -a.emp_no DESC;
