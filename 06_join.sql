--TUTORIAL

--question 1
SELECT matchid, player
FROM goal
WHERE teamid = 'GER';

--question 2
SELECT id, stadium, team1, team2
FROM game
WHERE id = 1012;

--question 3
SELECT player, teamid, stadium, mdate
FROM game JOIN goal ON id = matchid
WHERE teamid = 'GER';

--quesiton 4
SELECT team1, team2, player
FROM game JOIN goal ON id = matchid
WHERE player LIKE 'Mario%';

--question 5
SELECT player, teamid, coach, gtime
FROM goal JOIN eteam on teamid = id
WHERE gtime <= 10;

--question 6
SELECT mdate, teamname
FROM game JOIN eteam ON team1 = eteam.id
WHERE coach = 'Fernando Santos';

--question 7
SELECT player
FROM goal JOIN game ON matchid = game.id
WHERE stadium = 'National Stadium, Warsaw';

--question 8
SELECT DISTINCT player
FROM game JOIN goal ON matchid = game.id
WHERE (team1 = 'GER' OR team2 = 'GER') AND teamid != 'GER';

--question 9
SELECT teamname, COUNT(player)
FROM eteam JOIN goal ON eteam.id = goal.teamid
GROUP BY teamname;

--question 10
SELECT stadium, COUNT(player)
from game JOIN goal ON game.id = goal.matchid
GROUP BY stadium;

--question 11
SELECT matchid, mdate, COUNT(player)
FROM game JOIN goal ON matchid = game.id
WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid, mdate;

--question 12
SELECT matchid, mdate, COUNT(player)
FROM goal JOIN game ON goal.matchid = game.id
WHERE teamid = 'GER'
GROUP BY matchid, mdate;

--question 13
SELECT mdate, team1, SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) AS score1, team2, SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) AS score2
FROM game LEFT JOIN goal ON matchid = game.id
GROUP BY mdate, team1, team2
ORDER BY mdate, matchid, team1, team2;


--QUIZZ

--question 1
game  JOIN goal ON
(id=matchid)

--question 2
matchid, teamid, player, gtime, id, teamname, coach

--question 3
SELECT player, teamid, COUNT(*)
FROM game JOIN goal ON matchid = id
WHERE (team1 = "GRE" OR team2 = "GRE")
    AND teamid != 'GRE'
GROUP BY player, teamid

--question 4
DEN	9 June 2012
GER	9 June 2012

--question 5
SELECT DISTINCT player, teamid
FROM game JOIN goal ON matchid = id
WHERE stadium = 'National Stadium, Warsaw'
    AND (team1 = 'POL' OR team2 = 'POL')
    AND teamid != 'POL'

--question 6
SELECT DISTINCT player, teamid, gtime
FROM game JOIN goal ON matchid = id
WHERE stadium = 'Stadion Miejski (Wroclaw)'
    AND (( teamid = team2 AND team1 != 'ITA') OR ( teamid = team1 AND team2 != 'ITA'))

--question 7
Netherlands	        2
Poland	            2
Republic of Ireland	1
Ukraine	            2