/*Consultas com a cláusula FETCH*/


-- Selecionando o retorno com base no número de linhas

SELECT *
FROM HR.employees
ORDER BY 1
FETCH FIRST 5 ROWS ONLY;

-- Selecioanando o retorno com base no percentual dos primeiros 50%

SELECT *
FROM HR.employees
ORDER BY 3
FETCH FIRST 50 PERCENT ROWS ONLY;

-- Selecioanando o retorno com base no percentual dos 50% do meio pro final.

SELECT *
FROM HR.employees
ORDER BY 3
FETCH NEXT 50 PERCENT ROWS ONLY;

-- Selecionando o retorno eliminando as 5 primeiras linhas e pegando as 5 próximas.

SELECT *
FROM HR.employees
ORDER BY 3
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

-- Caso seja utilizado um número negativo no Offset, será ignorado e executará apenas com o Fetch Next.




