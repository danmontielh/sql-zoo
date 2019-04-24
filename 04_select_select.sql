--question 1
SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name = 'Russia');

--question 2
SELECT name FROM world WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom');

--question 3
SELECT name, continent FROM world WHERE continent = (SELECT continent FROM world WHERE name = 'Argentina') OR continent = (SELECT continent FROM world WHERE name = 'Australia') ORDER BY name;

--question 4
SELECT name, population FROM world WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world WHERE name = 'Poland');

--question 5
SELECT name, concat(ROUND(population*100/(SELECT population FROM world WHERE name = 'Germany')), '%') FROM world WHERE continent = 'Europe';

--question 6
SELECT name FROM world WHERE gdp > ALL(SELECT gdp FROM world WHERE gdp > 0 AND continent = 'Europe');

--question 7
SELECT continent, name, area FROM world AS w1 WHERE area >= ALL(SELECT area FROM world AS w2 WHERE w1.continent = w2.continent);

--question 8
SELECT continent, name FROM world AS w1 WHERE name <= ALL(SELECT name FROM world AS w2 WHERE w1.continent = w2.continent);

--question 9
SELECT name, continent, population FROM world WHERE continent IN (SELECT DISTINCT continent FROM world GROUP BY continent HAVING MAX(population) <= 25000000);

--question 10
SELECT name, continent FROM world AS w1 WHERE population >= ALL(SELECT population*3 FROM world AS w2 WHERE w1.continent = w2.continent AND w1.name != w2.name);