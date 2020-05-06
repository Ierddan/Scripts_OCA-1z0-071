-- FILTRANDO DADOS COM A CLÁUSULA WHERE

SELECT * 
FROM   hr.employees 

-- Realizando filtro utilizando o operador =

SELECT * 
FROM   hr.employees 
WHERE  last_name = 'King' 

--Obs: Os dados das tabelas são case sensitive. 

/*
Na tabela não há last_name king, apenas King. Logo, os dados na tabela são sensíveis a letras maiúsculas e minúsculas

Select *
FROM HR.employees
WHERE last_name = 'king'
*/

-- Realizando filtro utilizando os operadores < , > e <>.

-- > Maior 

SELECT * 
FROM   hr.employees 
WHERE  salary > 20000 

Select *
FROM HR.employees
WHERE hire_date > '01/12/2004'

-- < Menor

SELECT * 
FROM   hr.employees 
WHERE  salary < 5000

Select *
FROM HR.employees
WHERE hire_date < '01/12/2004'

-- <> Diferente

SELECT * 
FROM   hr.employees 
WHERE  salary <> 4800 

Select *
FROM HR.employees
WHERE hire_date <> '01/12/2004'

-- > Maior com Strings

SELECT * 
FROM   hr.employees 
WHERE  first_name > 'Alberto' 
ORDER  BY 2 ASC

-- O Order by ordena o retorno da instrução de acordo com a coluna informada. No caso acima, coluna 2, de forma crescente (ASC).

-- Between

/*
Filtra os valores de acordo com dois parametros, um inicial e um final. Entre PARAM1 e PARAM2.
*/

--Number
SELECT * 
FROM   hr.employees 
WHERE  salary BETWEEN 10000 AND 13000 

--Date
SELECT * 
FROM   hr.employees 
WHERE  hire_date BETWEEN '01/01/2007' AND '31/12/2007' 

-- IN

--Filtra o retorno da query de acordo com uma lista de valores informados.

SELECT * 
FROM   hr.employees 
WHERE  salary IN ( 4200, 11000, 24000 ) 

Select * 
From HR.employees
where First_name IN ('Steven', 'Allan', 'Clara')

-- LIKE

--Retornando strings iniciadas com A

SELECT * 
FROM   hr.employees 
WHERE  first_name LIKE 'A%' 

--Retornando strings onde a segunda letra é A.

SELECT * 
FROM   hr.employees 
WHERE  first_name LIKE '_a%' 

<<<<<<< HEAD
--Retornando strings com buscando por conjunto de letras em qualquer parte da string

SELECT *
FROM HR.EMPLOYEES
WHERE FIRST_NAME LIKE '%even%'

--
=======
--Ordenando retorno da consulta
>>>>>>> 4d77b8d02d29b3d34e97abb46f504f877e1d5a67

SELECT * 
FROM   hr.employees 
WHERE  salary > 3000 
       AND salary < 4000 
ORDER  BY 1 desc;

/*Ordenando a consulta pela primeira coluna de forma decrescente*/

SELECT * 
FROM   hr.employees 
ORDER BY MANAGER_ID NULLS FIRST

/*Selecionando os funcionários e ordenando os que não tem manager_id primeiro*/