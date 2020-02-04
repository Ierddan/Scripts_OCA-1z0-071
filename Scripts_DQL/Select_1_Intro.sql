--INICIANDO COM A INSTRUÇÃO SELECT

-- Comentário linha Única --.
-- Comentário com multiplas linhas /*Comentário*/.

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

Select 'Meu nome é '|| FIRST_NAME || q'[, poderia me dar um copo d'agua]' FROM hr.employees

Select 'Meu nome é '|| FIRST_NAME || q'{, poderia me dar um copo d'agua}' FROM hr.employees

Select 'Meu nome é '|| FIRST_NAME || q'<, poderia me dar um copo d'agua>' FROM hr.employees

/*
OBS:

O q funciona como um operador alternativo para concatenas Strings com aspas. Sendo necessário apenas envolvero conteúdo da 
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
Os apelidos não podem exceder 30 caracteres
*/

-- Operações 

/*
OBS:

Soma +
Subtração -
Multiplicação *
Divisão /
*/

Select FIRST_NAME, SALARY, SALARY + 100
FROM HR.employees

Select FIRST_NAME, SALARY, SALARY - 100
FROM HR.employees

/*
OBS:

O uso do parênteses é facultativo nas operações abaixo. Não altera o resultado da operação.
*/

Select FIRST_NAME, SALARY + (SALARY/100)
FROM HR.employees

Select FIRST_NAME, SALARY, SALARY + (SALARY *0.1)
FROM HR.employees

/*
OBS:

Toda operação com valores null, resultará em um null.
*/

-- Distinct

/*
OBS:

Selecionando o Department_Id pela tabela Employees. Ou seja, retornará a sequencia dos departamentos agregados a cada func.

Select DEPARTMENT_ID FROM HR.EMPLOYEES

Utilizando o distinct, mesmo selecionando o campo DEPARTMENT_ID da tabela employee, retornará os departamentos sem repetição, ou
seja, distintos.
*/

Select DISTINCT DEPARTMENT_ID FROM HR.EMPLOYEES 

-- Descrição da tabela

DESCRIBE HR.EMPLOYEES

