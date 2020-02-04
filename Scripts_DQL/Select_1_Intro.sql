--INICIANDO COM A INSTRU��O SELECT

-- Coment�rio linha �nica --.
-- Coment�rio com multiplas linhas /*Coment�rio*/.

-- Selecionando todos os dados da tabela.

SELECT * 
FROM   hr.employees 

-- Selecionando colunas especificas

SELECT first_name, 
       salary, 
       department_id 
FROM   hr.employees 

-- Concatenando valores das colunas

Select FIRST_NAME || ' ' || LAST_NAME
from hr.employees

-- Concatenando Strings que possuem aspas

Select 'Meu nome � '|| FIRST_NAME || q'[, poderia me dar um copo d'agua]' FROM hr.employees

Select 'Meu nome � '|| FIRST_NAME || q'{, poderia me dar um copo d'agua}' FROM hr.employees

Select 'Meu nome � '|| FIRST_NAME || q'<, poderia me dar um copo d'agua>' FROM hr.employees

/*
OBS:

O q funciona como um operador alternativo para concatenas Strings com aspas. Sendo necess�rio apenas envolvero conte�do da 
String com algum delimitador. Ex: [ ], { }, ( ) ou < >
*/
-- Atribuindo ALIAS (Apelido) as colunas 

Select FIRST_NAME || ' ' || LAST_NAME "Nome Completo"
from hr.employees

Select FIRST_NAME || ' ' || LAST_NAME as "Nome Completo"
from hr.employees

Select FIRST_NAME || ' ' || LAST_NAME as Nome_Completo
from hr.employees

/*
OBS:

Utilizamos aspas quando o apelido for composto. 
Os apelidos n�o podem exceder 30 caracteres
*/

-- Opera��es 

/*
OBS:

Soma +
Subtra��o -
Multiplica��o *
Divis�o /
*/

Select FIRST_NAME, SALARY, SALARY + 100
FROM HR.employees

Select FIRST_NAME, SALARY, SALARY - 100
FROM HR.employees

/*
OBS:

O uso do par�nteses � facultativo nas opera��es abaixo. N�o altera o resultado da opera��o.
*/

Select FIRST_NAME, SALARY + (SALARY/100)
FROM HR.employees

Select FIRST_NAME, SALARY, SALARY + (SALARY *0.1)
FROM HR.employees

/*
OBS:

Toda opera��o com valores null, resultar� em um null.
*/

-- Distinct

/*
OBS:

Selecionando o Department_Id pela tabela Employees. Ou seja, retornar� a sequencia dos departamentos agregados a cada func.

Select DEPARTMENT_ID FROM HR.EMPLOYEES

Utilizando o distinct, mesmo selecionando o campo DEPARTMENT_ID da tabela employee, retornar� os departamentos sem repeti��o, ou
seja, distintos.
*/

Select DISTINCT DEPARTMENT_ID FROM HR.EMPLOYEES 

-- Descri��o da tabela

DESCRIBE HR.EMPLOYEES

