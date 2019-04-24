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
