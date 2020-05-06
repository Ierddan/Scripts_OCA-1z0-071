--Months_Between 

SELECT * 
FROM   hr.employees; 

-- Função Months_between - Verifica a quantidade de meses existentes entra as duas datas. 

SELECT first_name, 
       hire_date, 
       Trunc(Months_between(sysdate, hire_date)) AS TIME_OF_HOUSE 
FROM   hr.employees; 

-- Função Add_Months - Adiciona meses a data escolhida 

SELECT first_name, 
       hire_date, 
       Add_months(hire_date, 3) AS DATE_MORE_NUMBER 
FROM   hr.employees; 

-- Função Next_Day - Verificando quando será o próximo dia estipulado. 1 - Domingo, 2 - Segunda e assim sucessivamente.

SELECT sysdate, 
       Next_day(sysdate, 1) 
FROM   dual; 

-- Função Last_day - Selecionando o último dia do mês 

SELECT Last_day(sysdate) 
FROM   dual; 

-- Trunc e Round nas datas. 

-- Sempre para baixo.

SELECT Trunc(sysdate, 'month') 
FROM   dual; 

-- Round - Se a data for maior que 15, arredondara para p dia 1 do proximo mês. Se for menor, arredondara para o dia 1 do mes atual.
-- Obs: O mesmo acontece com ano.

SELECT Round(sysdate, 'month') 
FROM   dual; 

