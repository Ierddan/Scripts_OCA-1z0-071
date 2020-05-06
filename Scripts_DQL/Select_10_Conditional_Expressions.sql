-- NVL - Tratamento de valores Nulos 
-- Sempre que a COMMISSION_PCT for 0, retornar� 0. 

SELECT first_name, 
       last_name, 
       email, 
       Nvl(commission_pct, 0) 
FROM   hr.employees; 

-- NVL2 - Tratamento de valores Nulos 
-- Se a COMMISSION_PCT n�o for null, retornar� o segundo par�metro, se for, retornar� o terceiro par�metro.

SELECT first_name, 
       last_name, 
       email, 
       Nvl2(commission_pct, commission_pct, 0) 
FROM   hr.employees; 

-- NULLIF - Retorna nulo caso as express�es sejam iguais 
-- Se Length(FIRST_NAME) for igual a Length(LAST_NAME) retornar� null. Caso n�o sejam iguais, retornar� a primeira express�o.

SELECT first_name, 
       last_name, 
       Length(first_name), 
       Length(last_name), 
       NULLIF(Length(first_name), Length(last_name)) 
FROM   hr.employees; 

-- COALESCE - Retorna o primeiro valor n�o nulo entre as express�es. 
--Se a primeira express�o for nula, a segunda nula e a terceira n�o nula, retornar� a terceira. 
--Se a primeira express�o for nula, a segunda n�o nula e a terceira n�o nula, retornar� a segunda.
-- Se a primeira express�o for n�o nula, retornar� a primeira. 

SELECT FIRST_NAME, 
       LAST_NAME, 
       COMMISSION_PCT, 
       MANAGER_ID,
       COALESCE(COMMISSION_PCT,MANAGER_ID)
FROM HR.EMPLOYEES;

-- CASE  
-- QUANDO A CONDI��O FOR TRUE ENT�O ISSO. 

SELECT first_name, 
       last_name, 
       salary, 
       CASE 
         WHEN salary >= 1000 
              AND salary < 4000 THEN 'CLASSE M�DIA BAIXA' 
         WHEN salary >= 4000 
              AND salary <= 9999 THEN 'CLASSE MEDIA' 
         WHEN salary >= 10000 
              AND salary < 19000 THEN 'CLASSE M�DIA ALTA' 
         WHEN salary >= 20000 THEN 'CLASSE ALTA' 
         ELSE 'CLASSE BAIXA' 
       END 
FROM   hr.employees; 

-- Caso o cargo seja tal, ent�o isso. 

SELECT first_name, 
       last_name, 
       salary, 
       CASE job_id 
         WHEN 'AD_PRES' THEN salary + ( salary * 0.5 ) 
         WHEN 'AD_VP' THEN salary + ( salary * 0.3 ) 
         WHEN 'IT_PROG' THEN salary + ( salary * 0.1 ) 
         ELSE salary + 300 
       END 
FROM   hr.employees; 

-- DECODE
-- Se JOB_ID for 'AD_PRES' ent�o salary + ( salary * 0.5 ), se job_id = 'AD_VP' ent�o salary + ( salary * 0.3 )... Caso contrario mostre o salario

SELECT first_name, 
       last_name, 
       salary, 
       Decode(job_id, 'AD_PRES', salary + ( salary * 0.5 ), 
                      'AD_VP', salary + ( salary * 0.3 ), 
                      'IT_PROG', salary + ( salary * 0.1 ),
                      salary) 
FROM   hr.employees; 


