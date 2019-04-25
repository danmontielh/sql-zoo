-- question 1
SELECT A_STRONGLY_AGREE	FROM nss WHERE question = 'Q01' AND institution = 'Edinburgh Napier University' AND subject = '(8) Computer Science';

--question 2
SELECT institution, subject FROM nss WHERE question = 'Q15' AND score >= 100;

--question 3
SELECT institution, score FROM nss WHERE question = 'Q15' AND score < 50 AND subject = '(8) Computer Science';

--question 4
SELECT subject, SUM(response) FROM nss WHERE question = 'Q22' AND (subject = '(8) Computer Science' OR subject = '(H) Creative Arts and Design') GROUP BY subject;

--question 5
SELECT subject, SUM(A_STRONGLY_AGREE*response/100) FROM nss WHERE question='Q22' AND (subject = '(8) Computer Science' OR subject = '(H) Creative Arts and Design') GROUP BY subject;

--question 6
SELECT subject, ROUND(SUM(A_STRONGLY_AGREE*response)/SUM(response)) FROM nss WHERE question='Q22' AND (subject = '(8) Computer Science' OR subject = '(H) Creative Arts and Design') GROUP BY subject;

--question 7
SELECT institution, ROUND(SUM(score*response)/SUM(response)) FROM nss WHERE question = 'Q22' AND institution LIKE '%Manchester%' GROUP BY institution;

--question 8
SELECT institution, SUM(sample), SUM(CASE WHEN subject = '(8) Computer Science' THEN sample END) FROM nss WHERE question = 'Q01' AND institution LIKE '%Manchester%' GROUP BY institution;