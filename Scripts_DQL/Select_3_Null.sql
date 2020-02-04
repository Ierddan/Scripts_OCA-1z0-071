-- Selecionando Valores nulos

-- IS NULL

SELECT *
FROM hr.employees
WHERE commission_pct IS NULL

-- NOT NULL

SELECT *
FROM hr.employees
WHERE commission_pct IS NOT NULL
