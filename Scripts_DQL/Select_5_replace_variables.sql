--VARIÁVEIS DE SUBSTITUIÇÃO

/*
O & ou && funcionam como referência a uma entrada do teclado. Da mesma forma que um scanner ou input, a diferença entre os dois é
que quando utilizamos o && o valor é definido para a variável até o fim da sessão.
*/

--Consultando name tipo String
-- Sempre que o valor passado for uma String, colocamos as aspas na variável de substituição.

SELECT * 
FROM HR.EMPLOYEES
WHERE FIRST_NAME = '&&NAME'

-- Consultando id tipo Number

SELECT * 
FROM HR.EMPLOYEES
WHERE EMPLOYEE_ID = &ID

-- Passando a Condição e operador de ordenação pela variável de substituição

Select *
FROM HR.employees
WHERE &CONDITION
ORDER BY &COLUNAORDERNACAO

-- UTILIZANDO DEFINE E UNDEFINE

-- DEFINE - DEFININDO VALOR DA VARIÁVEL DE SUBSTITUIÇÃO.

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

ACCEPT V_EMPLOYEE_ID PROMPT 'Digite o ID do funcionário: ';
ACCEPT V_EMPLOYEE_ID_1 PROMPT 'Digite o ID do funcionário: ';

SELECT * 
FROM HR.employees
WHERE employee_id BETWEEN &V_EMPLOYEE_ID AND &V_EMPLOYEE_ID_1;

UNDEFINE V_EMPLOYEE_ID;
UNDEFINE V_EMPLOYEE_ID_1;
