--TUTORIAL

--question 1
SELECT name FROM world WHERE name LIKE 'Y%';

--question 2
SELECT name FROM world WHERE name LIKE '%y';

--question 3
SELECT name FROM world WHERE name LIKE '%x%';

--question 4
SELECT name FROM world WHERE name LIKE '%land';

--question 5
SELECT name FROM world WHERE name LIKE 'C%ia%'

--question 6
SELECT name FROM world WHERE name LIKE '%oo%';

--question 7
SELECT name FROM world WHERE name LIKE '%a%a%a%';

--question 8
SELECT name FROM world WHERE name LIKE '_t%';

--question 9
SELECT name FROM world WHERE name LIKE '%o__o%';

--question 10
SELECT name FROM world WHERE name LIKE '____';

--question 11
SELECT name FROM world WHERE name = capital;

--question 12
SELECT name FROM world WHERE capital = concat(name, ' City');

--question 13
SELECT capital, name FROM world WHERE capital LIKE concat('%', name, '%');

--question 14
SELECT capital, name FROM world WHERE capital LIKE concat(name, '_%');

--question 15
SELECT name, REPLACE(capital, name, '') FROM world WHERE capital LIKE concat(name, '_%');


--QUIZZ

--question 1
SELECT name, population
FROM world
WHERE population BETWEEN 1000000 AND 1250000

--question 2
Table-E
Albania 	3200000
Algeria 	32900000

--quesiton 3
SELECT name FROM world
WHERE name LIKE '%a' OR name LIKE '%l'

--question 4
name	length(name)
Italy	5
Malta	5
Spain	5

--question 5
Andorra	936 

--question 6
SELECT name, area, population
FROM world
WHERE area > 50000 AND population < 10000000

--quesiton 7
SELECT name, population/area
FROM world
WHERE name IN ('China', 'Nigeria', 'France', 'Australia')
