SET @v_avg_salary = 0;
CALL employees.emp_avg_salaray_out(11300, @v_avg_salary);
SELECT @v_avg_salary;
