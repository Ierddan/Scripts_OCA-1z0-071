-- NVL - Tratamento de valores Nulos 
-- Sempre que a COMMISSION_PCT for 0, retornará 0. 

SELECT first_name, 
       last_name, 
       email, 
       Nvl(commission_pct, 0) 
FROM   hr.employees; 

-- NVL2 - Tratamento de valores Nulos 
-- Se a COMMISSION_PCT não for null, retornará o segundo parâmetro, se for, retornará o terceiro parâmetro.

SELECT first_name, 
       last_name, 
       email, 
       Nvl2(commission_pct, commission_pct, 0) 
FROM   hr.employees; 

-- NULLIF - Retorna nulo caso as expressões sejam iguais 
-- Se Length(FIRST_NAME) for igual a Length(LAST_NAME) retornará null. Caso não sejam iguais, retornará a primeira expressão.

SELECT first_name, 
       last_name, 
       Length(first_name), 
       Length(last_name), 
       NULLIF(Length(first_name), Length(last_name)) 
FROM   hr.employees; 

-- COALESCE - Retorna o primeiro valor não nulo entre as expressões. 
--Se a primeira expressão for nula, a segunda nula e a terceira não nula, retornará a terceira. 
--Se a primeira expressão for nula, a segunda não nula e a terceira não nula, retornará a segunda.
-- Se a primeira expressão for não nula, retornará a primeira. 

SELECT FIRST_NAME, 
       LAST_NAME, 
       COMMISSION_PCT, 
       MANAGER_ID,
       COALESCE(COMMISSION_PCT,MANAGER_ID)
FROM HR.EMPLOYEES;

-- CASE  
-- QUANDO A CONDIÇÃO FOR TRUE ENTÃO ISSO. 

SELECT first_name, 
       last_name, 
       salary, 
       CASE 
         WHEN salary >= 1000 
              AND salary < 4000 THEN 'CLASSE MÉDIA BAIXA' 
         WHEN salary >= 4000 
              AND salary <= 9999 THEN 'CLASSE MEDIA' 
         WHEN salary >= 10000 
              AND salary < 19000 THEN 'CLASSE MÉDIA ALTA' 
         WHEN salary >= 20000 THEN 'CLASSE ALTA' 
         ELSE 'CLASSE BAIXA' 
       END 
FROM   hr.employees; 

-- Caso o cargo seja tal, então isso. 

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
-- Se JOB_ID for 'AD_PRES' então salary + ( salary * 0.5 ), se job_id = 'AD_VP' então salary + ( salary * 0.3 )... Caso contrario mostre o salario

SELECT first_name, 
       last_name, 
       salary, 
       Decode(job_id, 'AD_PRES', salary + ( salary * 0.5 ), 
                      'AD_VP', salary + ( salary * 0.3 ), 
                      'IT_PROG', salary + ( salary * 0.1 ),
                      salary) 
FROM   hr.employees; 


