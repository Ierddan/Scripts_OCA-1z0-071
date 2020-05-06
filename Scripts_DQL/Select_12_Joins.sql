-- Joins

/* Cross Join: Cruza cada linha de uma tabela com todas as linhas da outra. Então, se a tabela A tem 5  linhas e a B 10,
O resultado das consulta terá 50. Ou seja, um funcionario será repetido para x departamentos.*/

--Ex: Cross Join Old Syntax

Select First_name,d.department_id from hr.employees, hr.departments d;

--Ex: Syntax current

Select e.First_name, 
       d.department_id 
from hr.employees e
Cross Join hr.departments d;

/*Natural Join: */

--Ex: Syntax current

Select Department_id, 
       Department_name, 
       Location_id,
       Locations.city
from hr.Departments
Natural Join hr.Locations;

/*Using: */

SELECT e.employee_id, 
       e.first_name, 
       department_id, 
       d.department_name 
FROM   hr.employees e 
       JOIN hr.departments d using(department_id);
       
-- Using com Where

SELECT e.employee_id, 
       e.first_name, 
       department_id, 
       d.department_name 
FROM   hr.employees e 
       JOIN hr.departments d using(department_id)
WHERE e.employee_id = 100;

-- ON COM JOIN ANINHADOS

SELECT E.employee_id, 
       E.first_name, 
       E.job_id, 
       D.department_name, 
       L.state_province 
FROM   hr.employees E 
       INNER JOIN hr.departments D 
                  INNER JOIN hr.locations L 
                          ON ( D.location_id = L.location_id ) 
               ON ( d.department_id = E.department_id ); 

SELECT * FROM HR.departments;

SELECT * FROM HR.LOCATIONS;