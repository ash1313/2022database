SELECT (FLOOR(months_between( SYSDATE, 회원.생년월일)/12+1) - mod(FLOOR(months_between( SYSDATE, 회원.생년월일)/12+1),10)) as 나이대, COUNT(*) as 가입자수
from 회원
GROUP BY (FLOOR(months_between( SYSDATE, 회원.생년월일)/12+1) - mod(FLOOR(months_between( SYSDATE, 회원.생년월일)/12+1),10))
ORDER BY COUNT(나이대) DESC;