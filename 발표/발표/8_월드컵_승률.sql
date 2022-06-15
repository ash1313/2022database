-- &월드컵번호
SELECT 월드컵_후보.후보번호, 월드컵_후보.이름, 
CASE 월드컵_후보에_속하다.일대일대결횟수
WHEN 0 THEN 0
ELSE (월드컵_후보에_속하다.일대일승리횟수/월드컵_후보에_속하다.일대일대결횟수)
END AS 일대일승률,
(SELECT COUNT(*) FROM 월드컵_참여하다 WHERE 월드컵_참여하다.월드컵번호 = 월드컵_후보에_속하다.월드컵번호) as 월드컵진행횟수,
(SELECT COUNT(*) FROM 월드컵_참여하다 WHERE 월드컵_참여하다.월드컵번호 = 월드컵_후보에_속하다.월드컵번호 AND 월드컵_후보.이름 = 월드컵_참여하다.우승후보이름) as 월드컵우승횟수,
CASE (SELECT COUNT(*) FROM 월드컵_참여하다 WHERE 월드컵_참여하다.월드컵번호 = 월드컵_후보에_속하다.월드컵번호)
WHEN 0 THEN 0
ELSE (SELECT COUNT(*) FROM 월드컵_참여하다 WHERE 월드컵_참여하다.월드컵번호 = 월드컵_후보에_속하다.월드컵번호 AND 월드컵_후보.이름 = 월드컵_참여하다.우승후보이름)/(SELECT COUNT(*) FROM 월드컵_참여하다 WHERE 월드컵_참여하다.월드컵번호 = 월드컵_후보에_속하다.월드컵번호)
END AS 월드컵승률
FROM 월드컵_후보, 월드컵_후보에_속하다
WHERE 월드컵_후보에_속하다.월드컵번호 = &월드컵번호 AND 월드컵_후보에_속하다.후보번호 = 월드컵_후보.후보번호
ORDER BY 월드컵승률 DESC, 일대일승률 DESC;

