--Union, Intersect e Minus

--Union - Jun��o das duas consultas
/*
1 - N�mero de colunas deve ser igual assim como o tipo dos dados
2 - O nome das colunas n�o importa
*/
SELECT * 
FROM   hr.employees 
WHERE  employee_id < 150 
UNION 
SELECT * 
FROM   hr.employees 
WHERE  employee_id > 150 

-- Union combina as linhas das duas consultas linearmente, union all vai juntar tudo sem se importar com isso.

-- Intersect - Interse��o entre as duas tabelas

SELECT * 
FROM   hr.employees 
WHERE  employee_id < 150 
Intersect 
SELECT * 
FROM   hr.employees 
WHERE  employee_id > 130 

--Minus - O que tem na primeira consulta e n�o tem na segunda.

SELECT * 
FROM   hr.employees 
WHERE  employee_id < 150 
Minus 
SELECT * 
FROM   hr.employees 
WHERE  employee_id > 130 

