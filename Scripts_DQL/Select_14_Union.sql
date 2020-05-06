--Union, Intersect e Minus

--Union - Junção das duas consultas
/*
1 - Número de colunas deve ser igual assim como o tipo dos dados
2 - O nome das colunas não importa
*/
SELECT * 
FROM   hr.employees 
WHERE  employee_id < 150 
UNION 
SELECT * 
FROM   hr.employees 
WHERE  employee_id > 150 

-- Union combina as linhas das duas consultas linearmente, union all vai juntar tudo sem se importar com isso.

-- Intersect - Interseção entre as duas tabelas

SELECT * 
FROM   hr.employees 
WHERE  employee_id < 150 
Intersect 
SELECT * 
FROM   hr.employees 
WHERE  employee_id > 130 

--Minus - O que tem na primeira consulta e não tem na segunda.

SELECT * 
FROM   hr.employees 
WHERE  employee_id < 150 
Minus 
SELECT * 
FROM   hr.employees 
WHERE  employee_id > 130 

