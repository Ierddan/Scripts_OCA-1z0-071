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