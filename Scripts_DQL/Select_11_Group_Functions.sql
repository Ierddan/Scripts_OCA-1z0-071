-- LISTAGG
-- Selecione em lista o First_name separado por ; adicione no grupo e ordene pelo First_name.

SELECT LISTAGG(FIRST_NAME, ', ') WITHIN GROUP (ORDER BY FIRST_NAME) "Employees"
FROM HR.EMPLOYEES
WHERE department_id = 60;

-- Group by
-- Realizando a soma dos salários por departamento

SELECT department_id, 
       Sum(salary) 
FROM   hr.employees 
GROUP  BY department_id; 

