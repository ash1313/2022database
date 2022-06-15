SELECT 장르명, COUNT(*) AS 회원수 FROM 선호영화장르 GROUP BY 장르명 ORDER BY 회원수 DESC;
