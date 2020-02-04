--VARI�VEIS DE SUBSTITUI��O

/*
O & ou && funcionam como refer�ncia a uma entrada do teclado. Da mesma forma que um scanner ou input, a diferen�a entre os dois �
que quando utilizamos o && o valor � definido para a vari�vel at� o fim da sess�o.
*/

--Consultando name tipo String
-- Sempre que o valor passado for uma String, colocamos as aspas na vari�vel de substitui��o.

SELECT * 
FROM HR.EMPLOYEES
WHERE FIRST_NAME = '&&NAME'

-- Consultando id tipo Number

SELECT * 
FROM HR.EMPLOYEES
WHERE EMPLOYEE_ID = &ID

-- Passando a Condi��o e operador de ordena��o pela vari�vel de substitui��o

Select *
FROM HR.employees
WHERE &CONDITION
ORDER BY &COLUNAORDERNACAO

-- UTILIZANDO DEFINE E UNDEFINE

-- DEFINE - DEFININDO VALOR DA VARI�VEL DE SUBSTITUI��O.

DEFINE V_EMPLOYEE_ID = 117;

SELECT * 
FROM HR.EMPLOYEES
WHERE EMPLOYEE_ID = &V_EMPLOYEE_ID;

-- UNDEFINE - REMOVENDO VALOR ATRELADO

UNDEFINE V_EMPLOYEE_ID;

SELECT * 
FROM HR.EMPLOYEES
WHERE EMPLOYEE_ID = &V_EMPLOYEE_ID;

-- ACCEPT E PROMPT

ACCEPT V_EMPLOYEE_ID PROMPT 'Digite o ID do funcion�rio: ';
ACCEPT V_EMPLOYEE_ID_1 PROMPT 'Digite o ID do funcion�rio: ';

SELECT * 
FROM HR.employees
WHERE employee_id BETWEEN &V_EMPLOYEE_ID AND &V_EMPLOYEE_ID_1;

UNDEFINE V_EMPLOYEE_ID;
UNDEFINE V_EMPLOYEE_ID_1;
