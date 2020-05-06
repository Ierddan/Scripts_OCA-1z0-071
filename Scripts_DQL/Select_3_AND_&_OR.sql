-- And e OR

-- And

SELECT *
FROM HR.employees
WHERE (salary < 5000
    OR job_id = 'IT_PROG');

/*Filtrando os funcionários que possuem salário < 5000 OU job_id IT_PROG*/    
   
SELECT *
FROM HR.employees
WHERE (salary < 5000
    AND job_id = 'IT_PROG');

/*Filtrando os funcionários que possuem salário < 5000 E job_id IT_PROG*/

SELECT * 
FROM   hr.employees 
WHERE  ( salary < 5000 
          OR job_id = 'IT_PROG' ) 
       AND first_name LIKE '%a%'; 
       
/*Filtrando os funcionários que (recebem menos de 5000 ou tem o job_id = IT_PROG) e a letra a contida no first_name*/
