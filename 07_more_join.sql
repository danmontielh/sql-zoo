--TUTORIAL

--question 1
SELECT id, title
FROM movie
WHERE yr = 1962;

--question 2
SELECT yr
FROM movie
WHERE title = 'Citizen Kane';

--question 3
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
ORDER BY yr;

--question 4
SELECT id
FROM actor
WHERE name = 'Glenn Close';

--question 5
SELECT id
FROM movie
WHERE title = 'Casablanca';

--question 6
SELECT name
FROM actor JOIN casting ON actor.id = actorid
WHERE movieid = 11768;

--question 7
SELECT name
FROM actor JOIN casting ON actor.id = actorid
WHERE movieid = (SELECT id
FROM movie
WHERE title = 'Alien');

--question 8
SELECT title
FROM movie JOIN casting ON movie.id = movieid
WHERE actorid = (SELECT id
FROM actor
WHERE name = 'Harrison Ford');

--question 9
SELECT title
FROM movie JOIN casting ON movie.id = movieid
WHERE actorid = (SELECT id
    FROM actor
    WHERE name = 'Harrison Ford') AND ord != 1;

--question 10
SELECT movie.title, actor.name
FROM movie JOIN casting ON movie.id = movieid JOIN actor ON actorid = actor.id
WHERE casting.ord = 1 AND movie.yr = 1962;

--question 11
SELECT yr, COUNT(title)
FROM movie JOIN casting ON movie.id = movieid JOIN actor ON actorid = actor.id
WHERE name = 'John Travolta'
GROUP BY yr
HAVING COUNT(title) > 2;

--question 12
SELECT movie.title, actor.name
FROM movie JOIN casting ON movie.id = movieid JOIN actor ON actorid = actor.id
WHERE movie.id IN (SELECT movieid
    FROM casting
    WHERE actorid = (SELECT id
    FROM actor
    WHERE name = 'Julie Andrews')) AND casting.ord = 1;

--question 13
SELECT name
FROM actor JOIN casting ON actor.id = actorid AND ord = 1
GROUP BY name
HAVING COUNT(movieid) >= 30;

--question 14
SELECT title, COUNT(actorid)
FROM movie JOIN casting ON movie.id = movieid
WHERE yr = 1978
GROUP BY title
ORDER BY COUNT(actorid) DESC, title;

--question 15
SELECT name
FROM actor JOIN casting ON actor.id = actorid
WHERE movieid IN (SELECT movieid
    FROM casting
    WHERE actorid = (SELECT id
    FROM actor
    WHERE name = 'Art Garfunkel')) AND name != 'Art Garfunkel';


--QUIZZ

--question 1
SELECT name
FROM actor INNER JOIN movie ON actor.id = director
WHERE gross < budget

--question 2
SELECT *
FROM actor JOIN casting ON actor.id = actorid
    JOIN movie ON movie.id = movieid

--question 3
SELECT name, COUNT(movieid)
FROM casting JOIN actor ON actorid=actor.id
WHERE name LIKE 'John %'
GROUP BY name
ORDER BY 2 DESC

--question 4
"Crocodile" Dundee
Crocodile
Dundee in Los Angeles
Flipper
Lightning Jack

--question 5
SELECT name
FROM movie JOIN casting ON movie.id = movieid
    JOIN actor ON actor.id = actorid
WHERE ord = 1 AND director = 351

--question 6
link the director column in movies
with the primary key in actor
connect the primary keys of movie and actor via the casting table

--question 7
A Bronx Tale	        1993
Bang the Drum Slowly	1973
Limitless	            2011