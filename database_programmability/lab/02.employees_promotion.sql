CREATE PROCEDURE sp_increase_salaries(department_name VARCHAR(250)) AS
	$$
		BEGIN
			WITH searched_department_id AS(
			SELECT * FROM departments WHERE "name" = department_name)
			UPDATE employees
			SET salary = salary * 1.05
			WHERE department_id IN (SELECT department_id FROM searched_department_id);

		END;
	$$
LANGUAGE plpgsql;