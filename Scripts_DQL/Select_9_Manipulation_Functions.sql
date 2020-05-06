--TO_CHAR

-- Manipulando datas com To_Char

Select To_CHAR(HIRE_DATE, 'DAY MONTH YYYY') from hr.employees;

Select To_CHAR(HIRE_DATE, 'DY MONTH YYYY') from hr.employees;

Select To_CHAR(HIRE_DATE, 'DD MONTH YYYY') from hr.employees;

Select To_CHAR(HIRE_DATE, 'DD "de" MONTH "de" YYYY') from hr.employees;

Select To_date(HIRE_DATE, 'DD/MM/RR') from hr.employees;

-- Manipulando números com To_Char

Select To_Char(SALARY,'9999999') from hr.employees;

Select To_Char(SALARY,'$99G999') from hr.employees;

Select To_Char(SALARY,'$99G999D99') from hr.employees;

-- TO_DATE

SELECT To_date(sysdate, 'dd-mm-yyyy') from dual;

SELECT To_date(sysdate, 'dd.mm.yyyy') from dual;

Select * from hr.employees
where hire_date > To_date('24.05.2007','dd.mm.yyyy')
order by hire_date

-- RRRR OU YYYY

Select TO_CHAR(TO_DATE('10-10-85','DD-MM-YYYY'),'YYYY') FROM DUAL

Select TO_CHAR(TO_DATE('10-10-85','DD-MM-RRRR'),'RRRR') FROM DUAL

