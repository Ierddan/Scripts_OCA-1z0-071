/*Consultas com a cl�usula FETCH*/


-- Selecionando o retorno com base no n�mero de linhas

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

-- Selecionando o retorno eliminando as 5 primeiras linhas e pegando as 5 pr�ximas.

SELECT *
FROM HR.employees
ORDER BY 3
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

-- Caso seja utilizado um n�mero negativo no Offset, ser� ignorado e executar� apenas com o Fetch Next.




