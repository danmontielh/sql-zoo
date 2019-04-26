--question 1
SELECT COUNT(*) FROM stops;

--question 2
SELECT id FROM stops WHERE name = 'Craiglockhart';

--question 3
SELECT id, name FROM stops JOIN route ON stops.id = route.stop WHERE (num = '4' AND company = 'LRT');

--question 4
SELECT company, num, COUNT(*) FROM route WHERE stop = 149 OR stop = 53 GROUP BY company, num HAVING COUNT(*) = 2;

--question 5
SELECT a.company, a.num, a.stop, b.stop FROM route a JOIN route b ON (a.company = b.company AND a.num = b.num) WHERE a.stop = 53 AND b.stop = 149;

--question 6
SELECT a.company, a.num, stopa.name, stopb.name FROM route a JOIN route b ON (a.company = b.company AND a.num = b.num) JOIN stops stopa ON (a.stop = stopa.id) JOIN stops stopb ON (b.stop = stopb.id) WHERE a.stop = 53 AND b.stop = 149;

--question 7
SELECT DISTINCT a.company, a.num FROM route a JOIN route b ON (a.company = b.company AND a.num = b.num) WHERE a.stop = 115 AND b.stop = 137;

--question 8
SELECT a.company, a.num FROM route a JOIN route b ON (a.company = b.company AND a.num = b.num) JOIN stops stopa ON (a.stop = stopa.id) JOIN stops stopb ON (b.stop = stopb.id) WHERE stopa.name = 'Craiglockhart' AND stopb.name = 'Tollcross';

--question 9
SELECT DISTINCT name, a.company, a.num FROM route a JOIN route b ON a.num = b.num JOIN stops ON stops.id = b.stop WHERE a.stop = 53 AND b.company = 'LRT';

--question 10
SELECT a.num, a.company, stops.name, c.num, c.company FROM route a JOIN route b ON (a.num = b.num AND a.company = b.company) JOIN route c ON b.stop = c.stop JOIN route d ON (c.num = d.num AND c.company = d.company) JOIN stops ON b.stop = stops.id WHERE a.stop = 53 AND d.stop = 147;
