--TUTORIAL

--question 1
SELECT *
FROM nobel
WHERE yr = 1950;

--question 2
SELECT winner
FROM nobel
WHERE yr = 1962 AND subject = 'Literature';

--question 3
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

--question 4
SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000;

--question 5
SELECT *
FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;

--question 6
SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

--question 7
SELECT winner
FROM nobel
WHERE winner LIKE 'John%';

--question 8
SELECT *
FROM nobel
WHERE subject = 'Physics' AND yr = 1980 OR subject = 'Chemistry' AND yr = 1984;

--question 9
SELECT *
FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine');

--question 10
SELECT *
FROM nobel
WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND yr >= 2004;

--question 11
SELECT *
FROM nobel
WHERE winner = 'Peter Grünberg';

--question 12
SELECT *
FROM nobel
WHERE winner = 'Eugene O''Neill';

--question 13
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC;

--question 14
SELECT winner, subject
FROM nobel
WHERE yr = 1984
ORDER BY subject
IN
('Physics', 'Chemistry'), subject, winner;


--QUIZZ

--question 1
SELECT winner
FROM nobel
WHERE winner LIKE 'C%' AND winner LIKE '%n'

--question 2
SELECT COUNT(subject)
FROM nobel
WHERE subject = 'Chemistry'
    AND yr BETWEEN 1950 and 1960

--question 3
SELECT COUNT(DISTINCT yr)
FROM nobel
WHERE yr NOT IN (SELECT DISTINCT yr
FROM nobel
WHERE subject = 'Medicine')

--question 4
Medicine	Sir John Eccles
Medicine	Sir Frank Macfarlane Burnet

--question 5
SELECT yr
FROM nobel
WHERE yr NOT IN(SELECT yr
FROM nobel
WHERE subject IN ('Chemistry','Physics'))

--question 6
SELECT DISTINCT yr
FROM nobel
WHERE subject='Medicine'
    AND yr NOT IN(SELECT yr
    FROM nobel
    WHERE subject='Literature')
    AND yr NOT IN (SELECT yr
    FROM nobel
    WHERE subject='Peace')

--question 7
Chemistry	1
Literature	1
Medicine	2
Peace	    1
Physics	    1