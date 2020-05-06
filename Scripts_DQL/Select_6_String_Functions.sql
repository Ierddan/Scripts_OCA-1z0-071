-- Funções de caracter

-- Upper - Todas as Letras maiúsculas.
-- Lower - Todas as Letras minúsculas.
-- Initcap - Iniciais maiúsculas.

SELECT Upper(first_name 
             || ' ' || last_name), 
       Lower(first_name 
             || ' ' || last_name), 
       Initcap(first_name 
             || ' ' || last_name) 
FROM   hr.employees 

-- Concat

Select CONCAT(FIRST_NAME,LAST_NAME) FROM HR.EMPLOYEES

Select FIRST_NAME ||' '||LAST_NAME FROM HR.EMPLOYEES

--Obs: Utilização semelhante ao ||.

-- Substr

--Selecionando a String da posição 1, 5 caracteres a frente.
Select substr(FIRST_NAME,1,5) FROM HR.EMPLOYEES

--Selecionando a String da posição 5 em diante
Select substr(FIRST_NAME, 5) FROM HR.EMPLOYEES

-- Length

-- Conta quantos caracteres o campo possui.
Select FIRST_NAME, LENGTH(FIRST_NAME) FROM HR.EMPLOYEES

-- Instr

-- Procurando o caractere L na String.
Select Instr(FIRST_NAME, 'l') from HR.employees
where FIRST_NAME = 'Ellen'

-- Procurando o caractere L na String a partir da primeira posição, informando que deseja a posição do segundo caracter L encontrado.
Select Instr(FIRST_NAME,'l',1,2) from HR.employees
where FIRST_NAME = 'Ellen'

-- LPAD

--Adicionando o caracter # a ESQUERDA da String até completarmos 10 caracteres.
Select FIRST_NAME, LPAD(FIRST_NAME,10,'#') FROM HR.EMPLOYEES

-- RPAD

--Adicionando o caracter # a DIREITA da String até completarmos 10 caracteres.
Select FIRST_NAME, RPAD(FIRST_NAME,10,'#') FROM HR.EMPLOYEES

-- REPLACE

--Substitui os caracteres informados pelo parametro definido posteriormente
Select FIRST_NAME, REPLACE(Upper(FIRST_NAME), 'E','7') from HR.employees

--Substitui os caracteres informados pelo parametro definido posteriormente
Select FIRST_NAME, REPLACE(Upper(FIRST_NAME), 'EL','7') from HR.employees


-- TRIM, LTRIM, RTRIM

-- Removendo espaços a DIREITA
Select RTRIM('                          olá mundo                           ') FROM DUAL

-- Removendo espaços a ESQUERDA
Select LTRIM('                          olá mundo                           ') FROM DUAL

-- Removendo espaços
Select TRIM('                          olá mundo                           ') FROM DUAL
