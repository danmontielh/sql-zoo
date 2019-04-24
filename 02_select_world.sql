--question 1
SELECT name, continent, population FROM world;

--question 2
SELECT name FROM world WHERE population >= 200000000;

--question 3
SELECT name, gdp/population AS per_capita_gdp FROM world WHERE population >= 200000000;

--question 4
SELECT name, population/1000000 AS population_in_millions FROM world WHERE continent = 'South America';

--question 5
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy');

--question 6
SELECT name FROM world WHERE name LIKE '%United%';

--quesiton 7
SELECT name, population, area FROM world WHERE population >= 250000000 OR area > 3000000;

--question 8
SELECT name, population, area FROM world WHERE population >= 250000000 XOR area > 3000000;

--question 9
SELECT name, ROUND(population/1000000, 2) AS pop_in_millions, ROUND(gdp/1000000000, 2) AS gdp_in_billions FROM world WHERE continent = 'South America';

--question 10
SELECT name, ROUND(gdp/population, -3) AS per_capita_gdp FROM world WHERE gdp >= 1000000000000;

--question 11
SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital);

--question 12
SELECT name, capital FROM world WHERE LEFT(name, 1) = LEFT(capital, 1) AND name != capital;

--question 13
SELECT name FROM world WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %';
 