영화제목을 입력으로 받아 해당 영화제목과 
연관된 굿즈들을 총 판매액의 내림차순으로 검색하는 쿼리


SELECT 상품번호, 상품명, SUM(구매가격*구매개수) as 총판매액
FROM 굿즈_상품, 굿즈_상품_구매하다
WHERE 굿즈번호 
   IN (SELECT 굿즈번호 FROM 굿즈_영화_관련되다 
      WHERE 영화번호 = (SELECT 영화번호 FROM 영화 WHERE  제목 = '&영화제목')) AND 굿즈번호 = 상품번호
GROUP BY 상품번호, 상품명
ORDER BY 총판매액 DESC;