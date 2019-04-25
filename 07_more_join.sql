--question 1
SELECT id, title FROM movie WHERE yr = 1962;

--question 2
SELECT yr FROM movie WHERE title = 'Citizen Kane';

--question 3
SELECT id, title, yr FROM movie WHERE title LIKE '%Star Trek%' ORDER BY yr;

--question 4
SELECT id FROM actor WHERE name = 'Glenn Close';

--question 5
SELECT id FROM movie WHERE title = 'Casablanca';

--question 6
SELECT name FROM actor JOIN casting ON actor.id = actorid WHERE movieid = 11768;

--question 7
SELECT name FROM actor JOIN casting ON actor.id = actorid WHERE movieid = (SELECT id FROM movie WHERE title = 'Alien');

--question 8
SELECT title FROM movie JOIN casting ON movie.id = movieid WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford');

--question 9
SELECT title FROM movie JOIN casting ON movie.id = movieid WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford') AND ord != 1;

--question 10
SELECT movie.title, actor.name FROM movie JOIN casting ON movie.id = movieid JOIN actor ON actorid = actor.id WHERE casting.ord = 1 AND movie.yr = 1962;

--question 11
SELECT yr, COUNT(title) FROM movie JOIN casting ON movie.id = movieid JOIN actor ON actorid = actor.id WHERE name = 'John Travolta' GROUP BY yr HAVING COUNT(title) > 2;

--question 12
SELECT movie.title, actor.name FROM movie JOIN casting ON movie.id = movieid JOIN actor ON actorid = actor.id WHERE movie.id IN (SELECT movieid FROM casting WHERE actorid = (SELECT id FROM actor WHERE name = 'Julie Andrews')) AND casting.ord = 1;

--question 13
SELECT name FROM actor JOIN casting ON actor.id = actorid AND ord = 1 GROUP BY name HAVING COUNT(movieid) >= 30;

--question 14
SELECT title, COUNT(actorid) FROM movie JOIN casting ON movie.id = movieid WHERE yr = 1978 GROUP BY title ORDER BY COUNT(actorid) DESC, title;

--question 15
SELECT name FROM actor JOIN casting ON actor.id = actorid WHERE movieid IN (SELECT movieid FROM casting WHERE actorid = (SELECT id FROM actor WHERE name = 'Art Garfunkel')) AND name != 'Art Garfunkel';