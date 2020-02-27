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