--question 1
SELECT SUM(population) FROM world;

--question 2
SELECT DISTINCT continent FROM world;

--question 3
SELECT SUM(gdp) FROM world WHERE continent = 'Africa';

--question 4
SELECT COUNT(name) FROM world WHERE area >= 1000000;

--question 5
SELECT SUM(population) from world WHERE name in ('Estonia', 'Latvia', 'Lithuania');

--question 6
SELECT continent, COUNT(name) FROM world GROUP BY continent;

--question 7
SELECT continent, COUNT(*) FROM world WHERE population >= 10000000 GROUP BY continent;

--question 8
SELECT continent FROM world GROUP BY continent HAVING SUM(population) >= 100000000;