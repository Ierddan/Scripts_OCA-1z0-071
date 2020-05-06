-- Subquery single row

SELECT * 
FROM   hr.employees 
WHERE  salary = (SELECT Max(salary) 
                 FROM   hr.employees);           

SELECT * 
FROM   hr.employees 
WHERE  job_id = (SELECT job_id 
                 FROM   hr.employees 
                 WHERE  Upper(last_name) = 'ABEL'); 

-- Subquery MULTIPLE rows
                 
SELECT * 
FROM   hr.employees 
WHERE  SALARY > ALL (SELECT SALARY 
                 FROM   hr.employees 
                 WHERE  Upper(JOB_ID) = 'SA_REP');
                 

--Subquery contendo valores nulls
--Se o conjunto de subconsultas contiver um valor nulo, a consulta não recuperará nenhum registro

SELECT employee_id, 
       first_name, 
       last_name, 
       salary 
FROM   hr.employees 
WHERE  employee_id NOT IN (SELECT DISTINCT manager_id 
                           FROM   hr.employees); 
                           
--Exists e Not Exists

SELECT * 
FROM   hr.departments dept 
WHERE  EXISTS (SELECT dept.department_id 
               FROM   hr.employees EMP 
               WHERE  emp.department_id = dept.department_id) 






