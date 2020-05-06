-- LISTAGG
-- Seleciona em lista o First_name separado por ; adicione no grupo e ordene pelo First_name.

SELECT LISTAGG(FIRST_NAME, ', ') WITHIN GROUP (ORDER BY FIRST_NAME) "Employees"
FROM HR.EMPLOYEES
WHERE department_id = 60;

SELECT LISTAGG (DEPARTMENT_NAME, ' ,') WITHIN GROUP (ORDER BY DEPARTMENT_NAME) DEPARTAMENTOS
FROM HR.departments;

-- Group by
-- Realizando a soma dos salários por departamento

SELECT department_id, 
       Sum(salary) 
FROM   hr.employees 
GROUP  BY department_id; 

-- GROUP BY COM ROLLUP - O rollup informa subtotais dos grupos de acordo com o agrupamento.

SELECT First_name,
       salary,
       department_id, 
       Sum(salary) 
FROM   hr.employees 
GROUP  BY ROLLUP (department_id,salary,first_name)
ORDER BY DEPARTMENT_ID; 

SELECT * FROM HR.employees;
SELECT * FROM HR.departments;

-- HAVING - Funciona como where do Group by.

SELECT department_id, 
       Sum(salary)
FROM HR.EMPLOYEES
GROUP BY department_id
HAVING SUM(SALARY) > 100000

