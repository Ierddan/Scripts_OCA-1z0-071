-- Number Functions

-- Truncando valores sem arredondar.

SELECT TRUNC(343.50)
FROM dual

-- Definindo quantas casas após o zero.

SELECT TRUNC(343.523230,3)
FROM dual

-- Round 

-- Arredondando valores. >= 5 arredonda para proxima casa decimal.
-- Removendo casas decimais

SELECT ROUND(343.30)
FROM dual

--Adcionando +1 no decimal

SELECT ROUND(343.199,1)
FROM DUAL

-- MOD

--Verificando resto da divisão

SELECT MOD(SALARY,3)
FROM HR.EMPLOYEES

-- SALARY DIVIDIDO POR 3 - RETORNO DA CONSULTA É O RESTO DA DIVISÃO.