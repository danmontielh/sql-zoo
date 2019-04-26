--TUTORIAL

--question 1
SELECT SUM(population)
FROM world;

--question 2
SELECT DISTINCT continent
FROM world;

--question 3
SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa';

--question 4
SELECT COUNT(name)
FROM world
WHERE area >= 1000000;

--question 5
SELECT SUM(population)
from world
WHERE name in ('Estonia', 'Latvia', 'Lithuania');

--question 6
SELECT continent, COUNT(name)
FROM world
GROUP BY continent;

--question 7
SELECT continent, COUNT(*)
FROM world
WHERE population >= 10000000
GROUP BY continent;

--question 8
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000;


--QUIZZ

--question 1
SELECT SUM(population)
FROM bbc
WHERE region = 'Europe'

--question 2
SELECT COUNT(name)
FROM bbc
WHERE population < 150000

--question 3
AVG
(), COUNT
(), MAX
(), MIN
(), SUM
()

--question 4
No result due to invalid
use of the WHERE function

--question 5
SELECT AVG(population)
FROM bbc
WHERE name IN ('Poland', 'Germany', 'Denmark')

--question 6
SELECT region, SUM(population)/SUM(area) AS density
FROM bbc
GROUP BY region

--question 7
SELECT name, population/area AS density
FROM bbc
WHERE population = (SELECT MAX(population)
FROM bbc)

--question 8
Americas	    732240
Middle East	    13403102
South America	17740392
South Asia	    9437710