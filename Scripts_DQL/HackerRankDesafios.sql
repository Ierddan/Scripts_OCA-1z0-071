-- DESAFIO 5.

/*Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

SELECT Q.CITY,
       LENGTH(Q.CITY) 
FROM (SELECT CITY FROM STATION ORDER BY CITY) Q
WHERE LENGTH(Q.CITY) <= ALL (SELECT LENGTH(CITY) FROM STATION)
AND ROWNUM < 2;

SELECT Q.CITY,
       LENGTH(Q.CITY) 
FROM (SELECT CITY FROM STATION ORDER BY CITY) Q
WHERE LENGTH(Q.CITY) >= ALL (SELECT LENGTH(CITY) FROM STATION)
AND ROWNUM < 2;

SELECT Q.LAST_NAME,
       LENGTH(Q.LAST_NAME) 
FROM (SELECT LAST_NAME FROM HR.EMPLOYEES ORDER BY LAST_NAME) Q
WHERE LENGTH(Q.LAST_NAME) <= ALL (SELECT LENGTH(LAST_NAME) FROM HR.EMPLOYEES)
AND ROWNUM < 2;

-- Desafio 6.

/*Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.*/

SELECT CITY 
FROM   STATION 
WHERE  InitCap(CITY) LIKE 'A%' 
        OR InitCap(CITY) LIKE 'E%' 
        OR InitCap(CITY) LIKE 'I%' 
        OR InitCap(CITY) LIKE 'O%' 
        OR InitCap(CITY) LIKE 'U%' 
ORDER  BY 1; 

-- Desafio 7.

/*Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY 
FROM   STATION 
WHERE  Initcap(CITY) LIKE '%a' 
        OR lower(CITY) LIKE '%e' 
        OR lower(CITY) LIKE '%i' 
        OR lower(CITY) LIKE '%o' 
        OR lower(CITY) LIKE '%u' 
ORDER  BY 1; 

-- Desafio 8.

/*Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
Your result cannot contain duplicates.*/

SELECT city 
FROM   station 
WHERE  city LIKE 'A%' 
       AND Upper(city) LIKE '%A' 
        OR city LIKE 'A%' 
           AND Upper(city) LIKE '%E' 
        OR city LIKE 'A%' 
           AND Upper(city) LIKE '%I' 
        OR city LIKE 'A%' 
           AND Upper(city) LIKE '%O' 
        OR city LIKE 'A%' 
           AND Upper(city) LIKE '%U' 
        OR city LIKE 'E%' 
           AND Upper(city) LIKE '%A' 
        OR city LIKE 'E%' 
           AND Upper(city) LIKE '%E' 
        OR city LIKE 'E%' 
           AND Upper(city) LIKE '%I' 
        OR city LIKE 'E%' 
           AND Upper(city) LIKE '%O' 
        OR city LIKE 'E%' 
           AND Upper(city) LIKE '%U' 
        OR city LIKE 'I%' 
           AND Upper(city) LIKE '%A' 
        OR city LIKE 'I%' 
           AND Upper(city) LIKE '%E' 
        OR city LIKE 'I%' 
           AND Upper(city) LIKE '%I' 
        OR city LIKE 'I%' 
           AND Upper(city) LIKE '%O' 
        OR city LIKE 'I%' 
           AND Upper(city) LIKE '%U' 
        OR city LIKE 'O%' 
           AND Upper(city) LIKE '%A' 
        OR city LIKE 'O%' 
           AND Upper(city) LIKE '%E' 
        OR city LIKE 'O%' 
           AND Upper(city) LIKE '%I' 
        OR city LIKE 'O%' 
           AND Upper(city) LIKE '%O' 
        OR city LIKE 'O%' 
           AND Upper(city) LIKE '%U' 
        OR city LIKE 'U%' 
           AND Upper(city) LIKE '%A' 
        OR city LIKE 'U%' 
           AND Upper(city) LIKE '%E' 
        OR city LIKE 'U%' 
           AND Upper(city) LIKE '%I' 
        OR city LIKE 'U%' 
           AND Upper(city) LIKE '%O' 
        OR city LIKE 'U%' 
           AND Upper(city) LIKE '%U' 
ORDER BY 1;

-- Desafio 9
/*Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/

SELECT LAST_NAME 
FROM HR.EMPLOYEES 
WHERE SUBSTR(LAST_NAME,1,1) <> ALL ('A','E','I','O','U')

-- Desafio 10

/*Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY 
FROM   STATION 
WHERE  lower(CITY) not LIKE '%a' 
        and lower(CITY) not LIKE '%e' 
        and lower(CITY) not LIKE '%i' 
        and lower(CITY) not LIKE '%o' 
        and lower(CITY) not LIKE '%u' 
ORDER  BY 1; 

--Desafio 11

/*Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE SUBSTR(CITY,1,1) <> ALL ('A','E','I','O','U')
OR SUBSTR(CITY,LENGTH(CITY),1) <> ALL ('a','e','i','o','u');

--Desafio 12

/*Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/

SELECT NAME FROM STUDENTS
WHERE Marks > 75
ORDER BY SUBSTR(NAME,(LENGTH(NAME) - 2),3), ID;

--Desafio 13

/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT SUM(CITY.POPULATION)FROM CITY
JOIN COUNTRY ON (CITY.CountryCode = COUNTRY.CODE)
WHERE COUNTRY.CONTINENT = 'Asia';

--Desafio 14

/*Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT CITY.NAME FROM CITY
JOIN COUNTRY ON (CITY.CountryCode = COUNTRY.CODE)
WHERE COUNTRY.CONTINENT = 'Africa';

