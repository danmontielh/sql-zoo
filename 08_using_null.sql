--TUTORIAL

--question 1
SELECT name
FROM teacher
WHERE dept IS NULL;

--question 2
SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept ON (teacher.dept = dept.id);

--question 3
SELECT teacher.name, dept.name
FROM teacher LEFT JOIN dept ON (teacher.dept = dept.id);

--question 4
SELECT teacher.name, dept.name
FROM teacher RIGHT JOIN dept ON (teacher.dept = dept.id);

--question 5
SELECT name, COALESCE(mobile, '07986 444 2266')
FROM teacher;

--question 6
SELECT teacher.name, COALESCE(dept.name, 'None')
FROM teacher LEFT JOIN dept ON (teacher.dept = dept.id);

--question 7
SELECT COUNT(name), COUNT(mobile)
FROM teacher;

--question 8
SELECT dept.name, COUNT(teacher.name)
FROM teacher RIGHT JOIN dept ON dept.id = dept
GROUP BY dept.name;

--question 9
SELECT name, CASE WHEN (dept = 1 OR dept = 2) THEN 'Sci' ELSE 'Art' END
FROM teacher;

--question 10
SELECT name, CASE WHEN (dept = 1 OR dept = 2) THEN 'Sci' WHEN dept = 3 THEN 'Art' ELSE 'None' END
FROM teacher;


--QUIZZ

--question 1
SELECT teacher.name, dept.name
FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id)

--question 2
SELECT dept.name
FROM teacher JOIN dept ON (dept.id = teacher.dept)
WHERE teacher.name = 'Cutflower'

--question 3
SELECT dept.name, COUNT(teacher.name)
FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept
GROUP BY dept.name

--question 4
display 0 in result column for all teachers without department

--question 5
'four' for Throd

--question 6
Shrivell	Computing
Throd	    Computing
Splint	    Computing
Spiregrain	Other
Cutflower	Other
Deadyawn	Other