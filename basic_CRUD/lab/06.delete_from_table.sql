DELETE FROM employees
WHERE department_id IN (1,2)
--WHERE department_id = 1 OR department_id = 2
;

SELECT * from employees