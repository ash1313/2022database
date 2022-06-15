rem 법정대리인 테이블 생성

CREATE TABLE 법정대리인(
    대리인_번호 INT,
    성명 CHAR(10) NOT NULL,
    연락처 CHAR(15) NOT NULL,
    인증정보 CHAR(88) NOT NULL,
    CONSTRAINT 법정대리인_PK PRIMARY KEY (대리인_번호)
);
INSERT INTO 법정대리인(대리인_번호, 성명, 연락처, 인증정보) VALUES(1, '김동산', '010-8454-4124', 'fRkcOACvTInjCi9bdEFaLwHIHIUpTPmqeNWXsSUgzAakfJ7U8x9IVks6kUJ4aSgalD6epycLDoySrdhNSk5Mmpm7');
INSERT INTO 법정대리인(대리인_번호, 성명, 연락처, 인증정보) VALUES(2, '최자', '010-4521-9512', 'LRVQ3s6XbkIErwHOVQZGTMZ4HgkWB7HfCHmCd1TrAbjX708SPIXsoRgMHXL8DiMGjHzrWb4DhgSvL66JXWGYCif3');
INSERT INTO 법정대리인(대리인_번호, 성명, 연락처, 인증정보) VALUES(3, '김성인', '010-7413-7413', 'C3XO97WGxkyrX9BYX9afs7LRhXOy9rz6rmLz1i0MyARUoPFJRA9Fdjy2lkoAonjYbxilwqGsMNeyNxvBK6mxRTto');

COMMIT;

rem 영화 테이블 생성
CREATE TABLE 영화(
    영화번호 INT,
    제목 VARCHAR2(50) NOT NULL,
    제작국가 VARCHAR2(20) NOT NULL,
    개봉일 DATE NOT NULL,
    누적관객수 INT,
    상영시간 INT NOT NULL, -- SMALLINT -> NUMBER
    관람등급 CHAR(30) NOT NULL,
    줄거리 VARCHAR2(2000) NOT NULL,
    사진정보 VARCHAR2(80) NOT NULL,
    예고편 VARCHAR2(200),
    주요장면영상 VARCHAR2(200),
    CONSTRAINT 영화_PK PRIMARY KEY (영화번호)
);

INSERT INTO 영화 VALUES (1, '범죄도시2', '대한민국', TO_DATE('20220518', 'yyyy-mm-dd'), 3000000, 106,
  '15세 이상 관람가', '2008년 베트남 호치민시.
  젊은 한국인 남성 최용기는 현지에 사는 한국인 브로커와 함께 빈 공터에 방문하여 땅을 둘러보며 이 부지에 리조트를 세울 계획을 한다.
  그때 낡은 봉고차 한 대가 나타나고, 브로커는 꼭 만나봐야 할 렌터카 사업자라며 소개한다.
  브로커의 안내로 봉고차에 탑승한 최용기는 강해상이 먹고있던 과자를 뺏어 먹으며, 사업 이야기를 꺼내지만, 앞에 앉은 강해상은 그런 최용기를 비웃는다.
  그리고 강해상의 파트너인 두익이 무자비하게 최용기를 구타해버린다. 사실 리조트 사업은 최용기를 유인할 핑계였고, 그들의 목적은 최용기를 납치해 돈을 뜯어내는 것이었다.',
  '/movie/photo/범죄도시2.png',
  '/movie/trailer/범죄도시2.mov.',
  '/movie/main_scene/범죄도시2.mov'
);

INSERT INTO 영화 VALUES (2, '닥터 스트레인지: 대혼돈의 멀티버스', '미국', TO_DATE('20220504', 'yyyy-mm-dd'), 5500000, 126,
  '12세 이상 관람가',
  '멸망 직전인 우주에는 다크홀드로 타락하여 이마에 제3의 눈을 개안한 스트레인지가 있었다.
  두 스트레인지의 싸움 끝에 지구-616의 스트레인지가 다크홀드를 얻어, 차베즈와 함께 떨어진 또 다른 자신의 시체에 빙의한다. 시체 스트레인지가 잠시 완다를 제압한 사이 차베즈가 풀려난다.',
  '/movie/photo/닥터스트레인지대혼돈의멀티버스.png',
  '/movie/trailer/닥터스트레인지대혼돈의멀티버스.mov.',
  '/movie/main_scene/닥터스트레인지대혼돈의멀티버스.mov'
);

INSERT INTO 영화 VALUES (3, '라라랜드', '미국', TO_DATE('20161209', 'yyyy-mm-dd'), 3670000, 128,
  '12세 이상 관람가',
  '꿈을 꾸는 사람들을 위한 별들의 도시 라라랜드.
  재즈 피아니스트 세바스찬(라이언 고슬링)과 성공을 꿈꾸는 배우 지망생 미아(엠마 스톤).
  인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기 시작한다.',
  '/movie/photo/라라랜드.png',
  '/movie/trailer/라라랜드.mov.',
  '/movie/main_scene/라라랜드.mov'
);

INSERT INTO 영화 VALUES (4, '아이언맨3', '미국', TO_DATE('20130425', 'yyyy-mm-dd'), 4500000, 130,
  '12세 이상 관람가',
  '토니 스타크는 해피와 함께 스위스에서 과학 포럼에 참석한다.
  여기서 호 인센(아이언맨1)을 비롯한 유명한 과학자들을 만난다.
  그러던중 어딘가 안좋아보이는 과학자 킬리언이 나타나 
  자신이 소속된 민간기업으로 와 달라고 이야기한다.
  토니는 킬리언에게 옥상에서 나중에 보자고 하고, 킬리언은 옥상에서 계속 기다린다.
  하지만 토니는 그저 빈말이었을뿐 옥상에 올라가지 않는다.
  토니는 여성 과학자 마야 한센과 함께 한센이 만든 익스트리미스 기술에 대해 이야기 한다.',
  '/movie/photo/아이언맨3.png',
  '/movie/trailer/아이언맨3.mov.',
  '/movie/main_scene/아이언맨3.mov'
);

INSERT INTO 영화 VALUES (5, '스파이더맨 노 웨이 홈', '미국', TO_DATE('20211215', 'yyyy-mm-dd'), 4800000, 148,
  '12세 이상 관람가',
  '미스테리오스의 살인범으로 지목된데다 본명과 얼굴까지 만천하에 알려져버린 피터 파커와 피터의 가족, 친구들은 대미지 컨트롤의 조사를 받게 된다.
  변호사 맷 머독(=데어데블)의 도움을 받아 법적인 혐의는 벗게 되지만, 여론은 스파이더맨을 지지하는 파와 미스테리오스를 지지하는 파로 나뉘게 되고,
  피터 파커에 대한 대중들의 관심은 도저히 사그러들지 않는다.
  스파이더맨과 관련이 있다는 이유로 대학 불합격 통지서를 받게 된 친구들을 본 피터는 닥터 스트레인지를 찾아가 도움을 요청한다.',
  '/movie/photo/스파이더맨노웨이홈.png',
  '/movie/trailer/스파이더맨노웨이홈.mov.',
  '/movie/main_scene/스파이더맨노웨이홈.mov'
);

INSERT INTO 영화 VALUES (6, '스파이더맨 파 프롬 홈', '미국', TO_DATE('20190626', 'yyyy-mm-dd'), 7500000, 130,
  '12세 이상 관람가',
  '사회 곳곳에서 어벤져스를 기념하는 가운데, 피터 파커는 메이 숙모가 활동하는 블립 피해자를 돕는 봉사단체에서 주관하는 자선모금회에 스파이더맨으로 참가한다.
  그리고 페퍼 포츠를 대신하여 거액의 기부금을 들고 찾아온 해피 호건과 메이 숙모 사이에 흐르는 묘한 기류를 감지하게 된다.
  이후 피터에게 닉 퓨리의 전화가 걸려오는데, 해피는 받으라고 하지만 피터는 부담감에 전화를 사서함으로 돌리고 기부자들과 악수한다는 핑계로 황급히 자리를 피한다.',
  '/movie/photo/스파이더맨파프롬홈.png',
  '/movie/trailer/스파이더맨파프롬홈.mov.',
  '/movie/main_scene/스파이더맨파프롬홈.mov'
);

INSERT INTO 영화 VALUES (7, '겨울왕국2', '미국', TO_DATE('20191121', 'yyyy-mm-dd'), 9400000, 103,
  '전체관람가',
  '엘사의 할아버지 루나드 왕이 아렌델을 다스리던 시절, 아렌델 왕국의 북쪽에는 노덜드라 족[2]이 사는 땅이 있었고, 두 지역은 친선 관계를 유지했다.
  노덜드라에서는 신비한 원소의 정령들이 일상에서부터 사람들의 삶에 밀접하게 관계하며 공존해 왔다.
  아렌델은 우정의 표시로 그들의 땅에 물을 다스릴 수 있는 댐을 지어 주었다.',
  '/movie/photo/겨울왕국2.png',
  '/movie/trailer/겨울왕국2.mov.',
  '/movie/main_scene/겨울왕국2.mov'
);

INSERT INTO 영화 VALUES (8, '말할 수 없는 비밀', '미국', TO_DATE('20080110', 'yyyy-mm-dd'), 3200000, 101,
  '12세 이상 관람가',
  '예술학교로 전학 온 상륜은 아버지의 영향을 받아 피아노에 천부적인 소질을 보인다.
  학교를 둘러보던 중, 신비스러운 피아노 연주가 흘러나오는 옛 음악실을 발견하게 되고, 그곳에서 샤오위를 만난다.
  그들은 아름다운 피아노 선율처럼 즐거운 시간을 보내고, 둘 사이에는 애틋한 마음이 싹튼다',
  '/movie/photo/말할수없는비밀.png',
  '/movie/trailer/말할수없는비밀.mov.',
  '/movie/main_scene/말할수없는비밀.mov'
);

INSERT INTO 영화 VALUES (9, '슈렉 포에버', '미국', TO_DATE('20100701', 'yyyy-mm-dd'), 230000, 93,
  '전체관람가',
  '슈렉이 아름다운 공주 피오나와 겁나먼 왕국을 구해낸 이후. 그들도 오래오래 행복하게 살았...더라면 참 좋았을텐데!
  과연 슈렉에게도 모두가 바라던 해피엔딩이 올까?
  한 가정의 평범한 아빠와 남편으로 반복되는 일상에 따분함을 느끼던 슈렉은 마을 사람들에게 겁을 주고, 진흙 목욕도 실컷 하던 자유로웠던 시절을 꿈꾸게 된다.
  ‘단 하루라도 자유로워진다면 죽어도 한이 없겠어’라며, 단 하루의 일탈을 꿈꾸던 슈렉은 ‘완전 딴판 겁나먼 세상’에 떨어지고 만다.',
  '/movie/photo/슈렉포에버.png',
  '/movie/trailer/슈렉포에버.mov.',
  '/movie/main_scene/슈렉포에버.mov'
);

INSERT INTO 영화 VALUES (10, '쥬라기 월드2', '미국', TO_DATE('20180606', 'yyyy-mm-dd'), 3200000, 101,
  '12세 이상 관람가',
  '쥬라기 월드가 폐쇄되고, 몇달 후 쥬라기 공원의 섬에 이상한 잠수함 한척이 수중 방사장으로 들어간다.
  잠수정의 사람들은 긴장하며 바닥을 살피고, 어느 공룡의 뼈 조각을 채취해서 헬기로 올려보내고,
  돌아가려는 찰나, 뒤에서 거대한 공룡이 잠수정을 향해 입을 벌리고, 신호가 끊긴다.
  한편 지상에서 통신하던 요원들은 뒤에 있는 렉시(티라노 사우로스)를 보고 도망친다.
  이때 모사사우르스의 우리가 열리게 된다.
  렉시에게 쫓기지만 잘 탈출하고, 이제 위로 올려가려는 순간
  아직 사다리에서 못올라온 요원이 물 속에서 위로 튀어오른 모사사우로스에게 잡아먹힌다.',
  '/movie/photo/쥬라기월드2.png',
  '/movie/trailer/쥬라기월드2.mov.',
  '/movie/main_scene/쥬라기월드2.mov'
);
INSERT INTO 영화 VALUES (11, '어벤저스 : 엔드게임', '미국', TO_DATE('20190424', 'yyyy-mm-dd'), 13934000, 181,
  '12세 이상 관람가',
  '인피니티 워 이후 절반만 살아남은 지구
   마지막 희망이 된 어벤져스
   먼저 떠난 그들을 위해 모든 것을 걸었다!
   위대한 어벤져스
   운명을 바꿀 최후의 전쟁이 펼쳐진다!',
  '/movie/photo/어벤저스엔드게임.png',
  '/movie/trailer/어벤저스엔드게임.mov.',
  '/movie/main_scene/어벤저스엔드게임.mov'
);


COMMIT;

rem 영화인 테이블 생성

CREATE TABLE 영화인 (
    영화인_id INT,
    이름 CHAR(60),
    출생일자 DATE,
    출생지역 CHAR(30),
    대표작품 VARCHAR2(50),
    수상기록 VARCHAR2(500),
    배우여부 CHAR(1) CHECK(배우여부 IN ('0', '1')),
    감독여부 CHAR(1) CHECK(감독여부 IN ('0', '1')),
    제작진여부 CHAR(1) CHECK(제작진여부 IN ('0', '1')),
    CONSTRAINT 영화인_PK PRIMARY KEY (영화인_id)
);

INSERT INTO 영화인 VALUES (1, '마동석', TO_DATE('19710301', 'yyyy-mm-dd'), '서울특별시', '범죄도시2',
  '아시안 필름 어워드 남우조연상(2017), 청룡영화상 남우조연상(2012,2016)', '1', '0', '0'
);
INSERT INTO 영화인 VALUES (2, '엠마 스톤', TO_DATE('19881106', 'yyyy-mm-dd'), '미국', '라라랜드',
  '아카데미 여우주연상(2017)', '1', '0', '0'
);
INSERT INTO 영화인 VALUES (3, '주걸륜', TO_DATE('19790118', 'yyyy-mm-dd'), '대만', '말할 수 없는 비밀',
  '홍콩 영화 금상장 신인상(2006)', '1', '1', '1'
);
INSERT INTO 영화인 VALUES (4, '크리스 벅', TO_DATE('19580224', 'yyyy-mm-dd'), '미국', '타잔',
  '골든 글로브 애니메이션 영화상(2014), 영국 아카데미 영화상 에니메이션상(2014)', '0', '1', '0'
);
INSERT INTO 영화인 VALUES (5, '존 파브로', TO_DATE('19661019', 'yyyy-mm-dd'), '미국', '라이온 킹',
  'Saturn Award for Best Director(2009)', '1', '1', '0'
);
INSERT INTO 영화인 VALUES (6, '토니 스타크 로버트 다우니 주니어', TO_DATE('19700529', 'yyyy-mm-dd'), '미국', '어벤져스 엔드게임',
  'MTV 제너레이션상(2015), 골든 글로브 앙상블 캐스트(1994)', '1', '0', '0'
);
INSERT INTO 영화인 VALUES (7, '조스 휘던', TO_DATE('19640623', 'yyyy-mm-dd'), '미국', '세레니티',
  '휴고상 최우수 드라마틱 프레젠테이션(2013)', '0', '1', '0'
);
INSERT INTO 영화인 VALUES (8, '베네딕트 컴버배치', TO_DATE('19760719', 'yyyy-mm-dd'), '미국', '닥터 스트레인지',
  '영국 아카데미 텔레비전상 남우주연상(2019), 로런스 올리비에상 남우주연상(2012)', '1', '0', '0'
);
INSERT INTO 영화인 VALUES (9, '조시 브롤린', TO_DATE('19680212', 'yyyy-mm-dd'), '미국', '데드풀2',
  '틴 초이스 무비 어워드(2019)', '1', '0', '0'
);
INSERT INTO 영화인 VALUES (10, '데이미언 셔젤', TO_DATE('19850119', 'yyyy-mm-dd'), '미국', '위플래시',
  '아카데미 감독상(2017), 골든 글로브 감독상(2017)', '0', '1', '0'
);

COMMIT;

rem 굿즈_상품 테이블 생성

CREATE TABLE 굿즈_상품(
  상품번호 INT,
  상품명 VARCHAR2(60),
  제조사 VARCHAR2(40),
  원산지 VARCHAR2(45),
  모델명 VARCHAR2(30) NOT NULL UNIQUE,
  제조일자 DATE,
  원가 INT,
  판매가 INT,
  굿즈상세정보 VARCHAR2(1000),
  반품교환정보 VARCHAR2(1000), -- 반품/교환정보 -> 반품교환정보
  CONSTRAINT 굿즈상품_PK PRIMARY KEY (상품번호)
);

INSERT INTO 굿즈_상품 VALUES(1,'해리포터 머그컵','인터파크','대한민국','0xqd5l3',TO_DATE('20120315','yyyy-mm-dd'),10000, 15000,'주인공 해리포터의 얼굴이 들어간 머그컵입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(2,'해리포터 지팡이','인터파크','대한민국','n0o9uri',TO_DATE('20150920','yyyy-mm-dd'),20000, 35000,'주인공이 사용했던 마법 지팡이입니다..','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(3,'스파이더맨 피규어','인터파크','대한민국','lw0r122',TO_DATE('20170705','yyyy-mm-dd'),50000, 70000,'스파이더맨이 서 있는 모습의 피규어입니다..','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(4,'스파이더맨 복면','plsports','대한민국','9itdg55',TO_DATE('20190501','yyyy-mm-dd'),5000, 7000,'어벤저스의 스파이더맨이 초기에 썼던 스파이더맨 복면입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(5,'스파이더맨 텀블러','에스아이엘','대한민국','ls36kmi',TO_DATE('20190513','yyyy-mm-dd'),20000, 30000,'스파이더맨의 모습이 들어간 텀블러입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');

INSERT INTO 굿즈_상품 VALUES(6,'어벤저스 피규어','프로파간다','대한민국','lpv1qig',TO_DATE('20190721','yyyy-mm-dd'),100000, 130000,'어벤져스 1편 주인공들이 모여있는 피규어입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(7,'타노스의 건틀릿','프로파간다','대한민국','yairiix',TO_DATE('20190801','yyyy-mm-dd'),150000, 200000,'영화에서 타노스가 사용했던 건틀릿을 재현한 굿즈입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(8,'어벤저스 엔드게임 피규어','프로파간다','대한민국','zdww896',TO_DATE('20191021','yyyy-mm-dd'),200000, 250000,'어벤져스 엔드게임의 마지막 전투 전 피규어입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(9,'아이언맨 피규어','프로파간다','대한민국','w45lx68',TO_DATE('20191120','yyyy-mm-dd'),100000, 150000,'아이언맨이 MARK-42를 입고있는 피규어입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(10,'아이언맨의 마지막 순간','CGV 씨네샵','대한민국','naq6v0b',TO_DATE('20191230','yyyy-mm-dd'),170000, 200000,'영화의 마지막 순간에 아이언맨이 핑거 스냅을 하는 모습을 피규어로 구현했습니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');


INSERT INTO 굿즈_상품 VALUES(11,'헐크 버스터 피규어','CGV 씨네샵','대한민국','nfcu2e1',TO_DATE('20200106','yyyy-mm-dd'),50000, 60000,'헐크 버스터의 피규어입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(12,'트랜스포머 범블비 자동차 버전','CGV 씨네샵','대한민국','g1jhg9d',TO_DATE('20200207','yyyy-mm-dd'),30000, 40000,'트랜스포머에 나오는 범블비의 자동차 모델입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(13,'옵티머스 프라임 폰 케이스','씨네마포','대한민국','7r3cbjk',TO_DATE('20200210','yyyy-mm-dd'),15500, 18000,'트랜스포머에 나오는 옵티머스 프라임의 모습이 담긴 폰 케이스입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(14,'어벤져스 책자','씨네마포','대한민국','ps2it05',TO_DATE('20200405','yyyy-mm-dd'),70000, 90000,'어벤져스에 나오는 인물들의 설명이 담긴 책자입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(15,'어벤져스 만화책 전집','씨네마포','대한민국','fz015qt',TO_DATE('20200615','yyyy-mm-dd'),500000, 750000,'어벤져스의 원작인 만화책 전집입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');

INSERT INTO 굿즈_상품 VALUES(16,'겨울왕국 울라프 키링','무브먼트','대한민국','1j9rbn1',TO_DATE('20200805','yyyy-mm-dd'),10000, 15000,'겨울왕국의 마스코트인 올라프의 모습이 들어간 키링입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(17,'겨울왕국 스티커 북','무브먼트','대한민국','wt7jpzs',TO_DATE('20200810','yyyy-mm-dd'),12000, 14000,'겨울왕국에 나오는 다양한 인물들이 스티커 형식으로 되어 있습니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(18,'닥터 스트레인지 타임 스톤 반지','얼루어 코리아','대한민국','r71c8p2',TO_DATE('20210320','yyyy-mm-dd'),10000, 13000,'닥터 스트레인지에 나왔던 타임 스톤을 반지로 구현한 굿즈입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(19,'닥터 스트레인지 지갑','얼루어 코리아','대한민국','ssbmopg',TO_DATE('20210621','yyyy-mm-dd'),30000, 35000,'닥터 스트레인지의 얼굴이 들어간 지갑입니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');
INSERT INTO 굿즈_상품 VALUES(20,'범죄도시2 만화책','무브먼트','대한민국','s1hknmb',TO_DATE('20220530','yyyy-mm-dd'),20000, 25000,'범죄도시2의 스토리를 각색하여 만든 만화책입니다. 영화의 나오는 인물들은 그대로 두고 엔딩이 이렇게 끝났으면 어땠을까 하는 생각에 만들게 되었습니다.','구매 후 일주일이 지나면 반품 및 교환이 불가능합니다.');

COMMIT;

rem 행사 테이블 생성

CREATE TABLE 행사(
  행사번호 INT,
  이름 VARCHAR2(60),
  내용 VARCHAR2(1000),
  시작날짜 DATE,
  종료날짜 DATE,
  장소 VARCHAR2(20),
  참가비 INT CHECK(참가비 >= 0),
  CONSTRAINT 행사_PK PRIMARY KEY (행사번호)
);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(1,'영화의 전당','매월 개봉 영화를 독특하고 풍성한 인문학적 시각으로 보고,이야기 나누는 영화 인문학 프로그램',TO_DATE('20210419' , 'yyyy-mm-dd'),TO_DATE('20210502' , 'yyyy-mm-dd'),'이룸센터',10000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(2,'인천영화열전','최근 주목받고 있는 인천의 젊은 감독이 제작한 인천 소재, 배경의 영화를 상영하고 토크로 구성된 작은 영화제',TO_DATE('20210122' , 'yyyy-mm-dd'),TO_DATE('20210201' , 'yyyy-mm-dd'),'시민청',15000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(3,'서울독립영화제','서울독립영화제의 시작을 알리는 공식행사',TO_DATE('20230921' , 'yyyy-mm-dd'),TO_DATE('20231101' , 'yyyy-mm-dd'),'하자센터',30000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(4,'찾아가는 독립영화 공공상영회','서울 곳곳에서 만나는 우리동네 독립영화관',TO_DATE('20220831' , 'yyyy-mm-dd'),TO_DATE('20220901' , 'yyyy-mm-dd'),'서울혁신파크',18000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(5,'서울 영화제','서울 최고의 영화제',TO_DATE('20201120' , 'yyyy-mm-dd'),TO_DATE('20210123' , 'yyyy-mm-dd'),'창비서교빌딩',20000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(6,'곰돌이 푸 전시회','전 세계에서 사랑받고 있는 곰돌이 푸가 한국에 왔습니다.',TO_DATE('20231130' , 'yyyy-mm-dd'),TO_DATE('20231201' , 'yyyy-mm-dd'),'유스호스텔 ',3000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(7,'부산국제영화제','아시아 최대의 영화 축제 부산국제영화제 개막',TO_DATE('20220818' , 'yyyy-mm-dd'),TO_DATE('20221215' , 'yyyy-mm-dd'),'부산 벡스코',5000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(8,'범죄도시2시사회','영화 범죄도시2 시사회에 회원 여러분을 초대합니다 ',TO_DATE('20230311' , 'yyyy-mm-dd'),TO_DATE('20230331' , 'yyyy-mm-dd'),'서울 코엑스',8000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(9,'전주국제영화제','애니메이션, 스릴러, 가족영화를 아우르는 7편의 작품 상영, 갈라 프리젠테이션, 무대인사, 공연 등 풍성한 부대행사 함께 즐깁니다.',TO_DATE('20230216' , 'yyyy-mm-dd'),TO_DATE('20230309' , 'yyyy-mm-dd'),'전주 라운지',35000);

INSERT INTO 행사(행사번호, 이름, 내용, 시작날짜, 종료날짜, 장소, 참가비)
    VALUES(10,'들꽃영화시상식','국내 최초로 독립영화, 저예산 영화만을 대상으로 하는 시상식이다. 한국의 인디펜던트 스피릿 어워드라고 볼 수 있다.',TO_DATE('20230216' , 'yyyy-mm-dd'),TO_DATE('20230301' , 'yyyy-mm-dd'),'시민청',10000);

COMMIT;

rem 커뮤니티 테이블 생성

CREATE TABLE 커뮤니티(
  커뮤니티_번호 INT,
  이름 VARCHAR2(30),
  목적 VARCHAR2(500),
  CONSTRAINT 커뮤니티_PK PRIMARY KEY (커뮤니티_번호)
);

INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(1, '10대 게시판', '10대들이 모여서 영화 이야기를 나누는 곳');

INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(2, '20대 게시판', '20대들이 모여서 영화 이야기를 나누는 곳');

INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(3, '30대 게시판', '30대들이 모여서 영화 이야기를 나누는 곳');


INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(4, '마블 게시판', '마블 영화를 좋아하는 사람들이 모여있는 곳');

INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(5, '디즈니 게시판', '디즈니 영화를 좋아하는 사람들이 모여있는 곳');

INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(6, '한국 영화 게시판', '한국 영화를 좋아하는 사람들이 모여있는 곳');    
    
INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(7, '미국 영화 게시판', '미국 영화를 좋아하는 사람들이 모여있는 곳');   

INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(8, '애니메이션 게시판', '애니메이션 영화를 좋아하는 사람들이 모여있는 곳');   

INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(9, '넷플릭스 게시판', '넷플릭스에서 볼만한 영화를 공유하는 곳');   

INSERT INTO 커뮤니티(커뮤니티_번호, 이름, 목적)
    VALUES(10, '신작 게시판', '한달 안에 나온 영화에 대해서 이야기하는 곳');   

COMMIT;

rem 게임 테이블 생성

CREATE TABLE 게임(
  등록번호 INT,
  이름 VARCHAR2(50) NOT NULL UNIQUE,
  출시일 DATE,
  버전 VARCHAR2(10),
  권장나이 CHAR(30),
  CONSTRAINT 게임_PK PRIMARY KEY (등록번호)
);

INSERT INTO 게임 VALUES(68673, 'lol', TO_DATE('20020321','yyyy-mm-dd'),'1.3.2','12세 이용가');
INSERT INTO 게임 VALUES(50570, 'lol2', TO_DATE('20040810','yyyy-mm-dd'),'2.1.1','12세 이용가');
INSERT INTO 게임 VALUES(73605, 'overwatch', TO_DATE('20160605','yyyy-mm-dd'),'1.5.1','12세 이용가');
INSERT INTO 게임 VALUES(98918, 'overwatch2', TO_DATE('20220531','yyyy-mm-dd'),'1.2.1','12세 이용가');
INSERT INTO 게임 VALUES(54099, 'df', TO_DATE('19991212','yyyy-mm-dd'),'5.3.4','전체이용가');

INSERT INTO 게임 VALUES(03042, 'starcraft', TO_DATE('19961011','yyyy-mm-dd'),'5.3.9','12세 이용가');
INSERT INTO 게임 VALUES(37227, 'starcraft2', TO_DATE('20050321','yyyy-mm-dd'),'2.8.0','12세 이용가');
INSERT INTO 게임 VALUES(58308, 'hello', TO_DATE('20100817','yyyy-mm-dd'),'4.1.4','15세 이용가');
INSERT INTO 게임 VALUES(72862, 'ghostrider', TO_DATE('20120506','yyyy-mm-dd'),'4.2.9','15세 이용가');
INSERT INTO 게임 VALUES(45772, 'back', TO_DATE('20001220','yyyy-mm-dd'),'3.8.7','청소년 이용 불가');

INSERT INTO 게임 VALUES(97018, 'qwer', TO_DATE('20021102','yyyy-mm-dd'),'1.4.1','15세 이용가');
INSERT INTO 게임 VALUES(19865, 'harryporter', TO_DATE('20011120','yyyy-mm-dd'),'6.3.9','전체이용가');
INSERT INTO 게임 VALUES(74705, 'avengers', TO_DATE('20151010','yyyy-mm-dd'),'6.7.2','15세 이용가');
INSERT INTO 게임 VALUES(81451, 'avengers2', TO_DATE('20181209','yyyy-mm-dd'),'3.8.6','15세 이용가');
INSERT INTO 게임 VALUES(34391, 'avengers infinite war', TO_DATE('20190130','yyyy-mm-dd'),'1.4.0','15세 이용가');

INSERT INTO 게임 VALUES(80810, 'avengers end game', TO_DATE('20210521','yyyy-mm-dd'),'0.5.9','15세 이용가');
INSERT INTO 게임 VALUES(97449, 'gun', TO_DATE('20090330','yyyy-mm-dd'),'1.5.1','전체이용가');
INSERT INTO 게임 VALUES(63062, 'sword', TO_DATE('20180420','yyyy-mm-dd'),'0.3.2','12세 이용가');
INSERT INTO 게임 VALUES(93587, 'world war Z', TO_DATE('20200220','yyyy-mm-dd'),'2.1.8','청소년 이용 불가');
INSERT INTO 게임 VALUES(42267, '19days', TO_DATE('20100919','yyyy-mm-dd'),'7.3.1','청소년 이용 불가');

COMMIT;

rem NFT_경매상품 테이블 생성

CREATE TABLE NFT_경매상품(
  토큰ID CHAR(78),
  이름 VARCHAR2(40),
  설명 VARCHAR2(1000),
  토큰URI VARCHAR2(200) NOT NULL,
  NFT카테고리 VARCHAR2(30),
  경매시작일자 DATE,
  경매종료일자  DATE, 
  CONSTRAINT NFT경매상품_PK PRIMARY KEY (토큰ID)
);

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('CcgbznvYAFR4dh76Vhx94i1kvQ3kvD0rXd3NkN0PStV4gCOjBVN2HlXzYRrKEt1NI2pIZoo545qcn9','스파이더맨실','스파이더맨 쓰는 실의 NFT','https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Aardvark.html','마블',TO_DATE('20221120' , 'yyyy-mm-dd'),TO_DATE('20221127' , 'yyyy-mm-dd'));


INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('zeUPvLPVJlUp9XDnOdI7w5wGrtFA2XA0Fefj9gJIGEzBxV45crxAP79faKJFhlJXdB4QI9F5Lz4y8a','마동석얼굴','마동석의 웃는 모습의 NFT','https://ipfs.io/ipfs/bafybeifjo6jp6zvxudgvrtlrrupcgl4qrn6li4nu7di2uyhk73mt2qbccy','한국영화',TO_DATE('20220615' , 'yyyy-mm-dd'),TO_DATE('20220622' , 'yyyy-mm-dd'));

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('4gzK0q44750UrrMluxAcLzbaGd5h0LStBjCPVg1bOOubksGya54EsI2sPvq36E2lw78gwDiNncBpQs','토르의 망치','토르가 가지고 있는 망치의 NFT','https://ipfs.io/ipfs/usEzNWk6kYIVBkextjtvjcBWiK79FhsUg1jDSKOWqGWtKYyW58lUZIc4GGZjNYmXZwbx4OIMpY7kYg','마블',TO_DATE('20220815' , 'yyyy-mm-dd'),TO_DATE('20220822' , 'yyyy-mm-dd'));

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('osQT2HVoDBGozrXWVo0CBUwQMilcxrdmvACaPNRV4w4Zl4dvwflR6ARjduUF9ZDv7tKKsArjCYyTor','타노스의 건틀릿','타노스가 가지고 있는 건틀릿의 NFT','https://ipfs.io/ipfs/PXSpQ8ETPhMDaFEnfFsZpJ5viND8FuKhcbvNIWV0QhIqbwG11nRLhdW9fvMdQJY1u5OhCBS7BshS41','마블',TO_DATE('20220910' , 'yyyy-mm-dd'),TO_DATE('20220917' , 'yyyy-mm-dd')); 

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('tYA5TwjEqjg3OtvL1XMjGWYDZ9JchDTDxY4OHMezOpjlTpNKvmRa5fW47jpIVXb9AgSrdcmu8uf26v','특송','박소담 주연 영화 특송 NFT','https://ipfs.io/ipfs/b4SlxLJlg11voXRSvcTStkpYNF1S06lAMt3v33arl7twlkvdNG4','한국영화',TO_DATE('20221010' , 'yyyy-mm-dd'),TO_DATE('20221017' , 'yyyy-mm-dd')); 

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('OPqSvrWvXX27x4L3bUT2J8sOBRIw6gBpv2KfSjzkNWEeCwIW2KoKIZHrI8DntjqdEkA3df3bY5YQSB','코난 시계','코난이 항상 차고다니는 시계의 NFT','https://ipfs.io/ipfs/VSqUTIiUPfYrYLeTAmg6kEIWOJBGEp2M5pJbnaoayTb4zEoZupcy','애니메이션',TO_DATE('20221015' , 'yyyy-mm-dd'),TO_DATE('20221022' , 'yyyy-mm-dd')); 

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('lcQhN5jm4WhHkQGJ500w3sGAexElRIaJ1a4Hf6MetEZ9FZTESu0BBAizWKAKMQOJlqnQitguxoOd2b','쥬라기 월드','쥬라기 월드에서 나오는 공룡의 NFT','https://ipfs.io/ipfs/juOXca8hIaUi0PZKSLRKDA1lHrJpaVquPMHO6hyyviUAXIxfYB2dda','모험/SF',TO_DATE('20221031' , 'yyyy-mm-dd'),TO_DATE('20221007' , 'yyyy-mm-dd')); 

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('BsjSH4fqt5VXYU77OXYTMIMIFRtLypt9SwsZ4aWyP3fFhJIBIoUtn0ILGTgZbogMjN5pNueyxZISDE','해리포터의 지팡이','해리포터가 가지고 있는 지팡이의 NFT','https://ipfs.io/ipfs/gjuOXca8hIaUi0PZKSLRKDA1lHrJpaVquPMHO6hyyviUAXIxfYB12','모험/SF',TO_DATE('20221111' , 'yyyy-mm-dd'),TO_DATE('20221118' , 'yyyy-mm-dd')); 

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('Hlum9msMrquR2aNWfdQ9uh1amVYHDjqRa4zQ6pbgA2xGEYQx4CloSwSXH4r6HKEHvM3DiNIrQBsxFS','타이타닉의 배','타이타닉에서 나온 배의 NFT','https://ipfs.io/ipfs/ZiFMde9boG8RsuFMrf0s5BhSr7VeUbTebe8kDNvWypkgICW5Xp22','모험/SF',TO_DATE('20221217' , 'yyyy-mm-dd'),TO_DATE('20221224' , 'yyyy-mm-dd')); 

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('W9SGkwHdZqeyMuepusteKxkcBGy0lMZJtckzvBzgAnHiIkFZldQyMrWj9pE32P4w0OOGKqPlGzSExm','스타워즈의 칼','스타워즈에서 사용되는 광선검의 NFT','https://ipfs.io/ipfs/mwtdFxljtfrHigY32G9YzkpOD4ri98Ez13rHBceQgJtTq7IkmOyPz71','모험/SF',TO_DATE('20230101' , 'yyyy-mm-dd'),TO_DATE('20230108' , 'yyyy-mm-dd')); 

INSERT INTO NFT_경매상품(토큰ID, 이름, 설명, 토큰URI, NFT카테고리, 경매시작일자, 경매종료일자)
    VALUES('t6jdVb715n0bGXSKxvogwpE5QZ1Hq17AFMyPgpXmVhJyqIclmL2oW7KKuKb6UAtVm35jAzJwdE6mBl','올라프','겨울왕국에 출연하는 눈사람 올라프 NFT','https://ipfs.io/ipfs/j6afTL0NZPPOpnu2LTpauPo3HMc13BnH9mFubPrswhp4N4Tkdqxpf','디즈니',TO_DATE('20230203' , 'yyyy-mm-dd'),TO_DATE('20230210' , 'yyyy-mm-dd')); 

COMMIT;

rem 영화_월드컵 테이블 생성

CREATE TABLE 영화_월드컵(
  월드컵번호 INT,
  이름 VARCHAR2(50) NOT NULL UNIQUE,
  설명 VARCHAR2(1000),
  포스터 VARCHAR2(50),
  CONSTRAINT 월드컵번호_PK PRIMARY KEY (월드컵번호)
);

INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (1,'스파이더맨 이상형 월드컵','최애 스파이더맨을 꼽는 월드컵입니다. 코믹스, 마블 시네마틱 유니버스(mcu) 등 다양하게 있으며 실크와 같은 스파이더맨계 능력자도 있습니다.','/worldcup/poster/1.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (2,'라라랜드 음악 이상형 월드컵','라라랜드에 등장한 음악중 가장 좋은 노래를 골라보세요.','/worldcup/poster/2.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (3,'MCU영화 월드컵','좋아하는 마블 시네마틱 유니버스 영화를 고르는 월드컵입니다.','/worldcup/poster/3.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (4,'아이언맨 슈트 이상형 월드컵','아이언맨의 슈트중 가장 멋있는 슈트를 고르는 월드컵입니다.','/worldcup/poster/4.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (5,'스파이더맨 빌런 월드컵','스파이더맨 영화 시리즈에 등장한 빌런중 매력적인 빌런을 고르는 월드컵입니다.','/worldcup/poster/5.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (6,'해리포터 영화 이상형 월드컵','해리포터 시리즈중 가장 좋아하는 작품을 고르는 월드컵입니다.','/worldcup/poster/6.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (7,'최고의 인생영화 월드컵','가장 인상깊게 본 인생영화를 골라보세요','/worldcup/poster/7.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (8,'한국 영화배우 월드컵','가장 좋아하는 한국 영화배우를 골라보세요','/worldcup/poster/8.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (9,'애니메이션 영화 이상형 월드컵','가장 좋아하는 애니메이션 영화를 고르는 월드컵입니다.','/worldcup/poster/9.png');
INSERT INTO 영화_월드컵(월드컵번호, 이름, 설명, 포스터) VALUES (10,'최악의 결말 월드컵','가장 마음에 들지않는 결말을 가진 영화를 고르는 월드컵입니다.','/worldcup/poster/10.png');

COMMIT;

rem 월드컵_후보 테이블 생성

CREATE TABLE 월드컵_후보(
  후보번호 INT,
  이름 VARCHAR2(50) NOT NULL UNIQUE,
  이미지 VARCHAR2(50),
  동영상링크 VARCHAR2(100),
  CONSTRAINT 월드컵후보_PK PRIMARY KEY (후보번호)
);

INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (1,'벽을 타는 스파이더맨','/worldcup/candidate_img/1.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (2,'밥먹는 스파이더맨','/worldcup/candidate_img/2.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (3,'베놈과 싸우는 스파이더맨','/worldcup/candidate_img/3.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (4,'친구들을 구해주는 스파이더맨','/worldcup/candidate_img/4.png');

INSERT INTO 월드컵_후보(후보번호,이름,동영상링크) VALUES (5,'Another Day of Sun','https://youtu.be/WxCz0UNUNeQ');
INSERT INTO 월드컵_후보(후보번호,이름,동영상링크) VALUES (6,'Someone in the Crowd','https://youtu.be/-62YbRZqxjs');
INSERT INTO 월드컵_후보(후보번호,이름,동영상링크) VALUES (7,'A Lovely Night','https://youtu.be/trrH4sVZ0dQ');
INSERT INTO 월드컵_후보(후보번호,이름,동영상링크) VALUES (8,'City of Stars','https://youtu.be/fQLAyvDNmUU');
INSERT INTO 월드컵_후보(후보번호,이름,동영상링크) VALUES (9,'Planetarium','https://youtu.be/qV1KxmGDkk8');
INSERT INTO 월드컵_후보(후보번호,이름,동영상링크) VALUES (10,'Summer Montage / Madeline','https://youtu.be/Lft6Eyh0cng');
INSERT INTO 월드컵_후보(후보번호,이름,동영상링크) VALUES (11,'Start a Fire','https://youtu.be/9INMW5IL9E8');
INSERT INTO 월드컵_후보(후보번호,이름,동영상링크) VALUES (12,'Engagement Party','https://youtu.be/qzspvUBLoOY');

INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (13,'라이온킹','/worldcup/candidate_img/13.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (14,'백투더퓨처','/worldcup/candidate_img/14.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (15,'인셉션','/worldcup/candidate_img/15.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (16,'스탠바이미','/worldcup/candidate_img/16.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (17,'찰리와 초콜릿 공장','/worldcup/candidate_img/17.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (18,'이터널 선샤인','/worldcup/candidate_img/18.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (19,'인사이드 아웃','/worldcup/candidate_img/19.png');
INSERT INTO 월드컵_후보(후보번호,이름,이미지) VALUES (20,'미이라','/worldcup/candidate_img/20.png');

COMMIT;

rem 회원 테이블 생성

CREATE TABLE 회원 (
    ID VARCHAR2(20),
    닉네임 VARCHAR2(20) NOT NULL UNIQUE,
    비밀번호 CHAR(64) NOT NULL,
    이메일주소 VARCHAR2(30),
    생년월일 DATE,
    성별 CHAR(1) CHECK(성별 IN ('M','W')),
    가입인증 CHAR(88) NOT NULL,
    가입일자 DATE, 
    휴대전화번호 CHAR(15),
    일반전화번호 CHAR(15),
    주소 VARCHAR2(100),
    서비스이용점수 INT DEFAULT 0,
    직거래이용점수 INT DEFAULT 0,
    게임등급 CHAR(9) DEFAULT '5등급',
    회원등급 CHAR(3) DEFAULT 'SD',
    경고누적횟수 INT DEFAULT 0,
    계정비활성화여부 CHAR(1) DEFAULT '0' CHECK(계정비활성화여부 IN ('0', '1')),
    누적구매포인트 INT DEFAULT 0,
    지갑주소 CHAR(34),
    법정대리인번호 INT,
    CONSTRAINT 회원_PK PRIMARY KEY(ID),
    CONSTRAINT 회원_법정대리인번호_FK FOREIGN KEY(법정대리인번호) REFERENCES 법정대리인(대리인_번호) ON DELETE SET NULL
);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('user1', '나무', 'passwd', 'user1@gmail.com', TO_DATE('19990604', 'yyyy-mm-dd'),'M', 'EmYinUxSeBgNpWW99hITU45tpke6mBCII70LEnK8EGN8YPbm77XhzpPAeYOxnbjeWKaVzbA1OiEZ1ooGQe2AO0lB', 
    TO_DATE('20180604 140220', 'yyyy-mm-dd hh24:mi:ss') , '010-1234-1234', '02-766-1234', '서울특별시 강남구 강남대로 328', NULL, NULL);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('snowman', '눈사람', 'snow123', 'snowman@naver.com', TO_DATE('20000604', 'yyyy-mm-dd'),'W', 'UkMT9lhMEPSkEdlsb9Wc7a3moiolUXIfRiu8EBhzFxf6Swn9BSdOuJO1J7nI13vb0c2rfT5DIPSQl7Z3ticVp92N', 
    TO_DATE('20170304 130210', 'yyyy-mm-dd hh24:mi:ss') , '010-4561-9874', '033-766-6481', '강원도 원주시 개운로 799', NULL, NULL);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('sunny', '태양', 'sunny123', 'sunny44@gmail.com', TO_DATE('20140505', 'yyyy-mm-dd'),'M', 'xpGQmh7D4QoVuwj17dDOwRqzj3euudhTFJXDY0Yt4y3WlVgR3fCuCxbePvfQX3KujEkn7x0r0d9dOwW7vjqZcZcG', 
    TO_DATE('20180507 180210', 'yyyy-mm-dd hh24:mi:ss') , '010-5555-5656', '032-764-6541', '강원도 춘천시 시청로 43', NULL, 1);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('coin', '코인', 'coin12', 'bitcoin@gmail.com', TO_DATE('19970505', 'yyyy-mm-dd'),'M', 'v7XIWAH4Vb6ljRuOTmbm40YTCx4Z2hBREsjIGaqczajuKvt4uZsg0VE6wdGQmox6BZychAq8x1mA5xRyCGL5YlH0', 
    TO_DATE('20170808 110210', 'yyyy-mm-dd hh24:mi:ss') , '010-5123-4123', '031-763-6121', '강원도 강릉시 시청로 3', 's5Z469MVq9y0sq5csqV1QCnFzqP1mY4Kxs', NULL);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('normal', '평범', 'norm34', 'nomnom@gmail.com', TO_DATE('19960401', 'yyyy-mm-dd'),'M', 'qeVPRp7KFFnDDfyMsXBX102OtKcsLdtJKpUBUV1nOzn4NLkbjRWntrWrj1UTiiN4i3ID7kjUlKZlLTUEyICFPOzB', 
    TO_DATE('20181213 083110', 'yyyy-mm-dd hh24:mi:ss') , '010-4122-9741', '02-763-6121', '서울특별시 강남구 연주로164길 38', NULL, NULL);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('random', '투유', 'random34', 'random@gmail.com', TO_DATE('19940401', 'yyyy-mm-dd'),'W', 'S65hVMErX9lmfwq7rYXJc2Ak6kavW2Dx2pIIUsPpptQK3xvzs3I9LyepyC2fdvOQXLqsktgm85JtuGqNye7FhTrJ', 
    TO_DATE('20171012 042010', 'yyyy-mm-dd hh24:mi:ss') , '010-1456-0532', '02-8734-9963', '서울특별시 도봉구 창1동 296-5', NULL, NULL);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('lucky', '럭키가이', 'luckluck34', 'lucky12@gmail.com', TO_DATE('20150401', 'yyyy-mm-dd'),'W', 'bOIIxFJQbY85M2oZMf0MPbiEt2aNBqU5txAmktEBlXBe0EpotNyVKn8aNMGQgaWSL8Nk7HVY6ruS2eA2cwTCFlSb', 
    TO_DATE('20181108 122010', 'yyyy-mm-dd hh24:mi:ss') , '010-1111-2222', '02-543-5701', '서울특별시 강남구 도산대로 408 신우빌딩 1층', NULL, 2);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('lmayr', '르메이르', 'lmayr123', 'lmayr@gmail.com', TO_DATE('19950401', 'yyyy-mm-dd'),'M', '50NqoWx9aHHEkuGDSBhvtGNIzIhc1jbDVHDyZH8XiTCV6a1GsY8vTCHd6SZt3Nr7m9LjRj6Msx5JJjfVQ9jZCzjd', 
    TO_DATE('20170402 063110', 'yyyy-mm-dd hh24:mi:ss') , '010-1344-0763', '02-134-0742', '서울특별시 영등포구 여의대로 108 파크원 더현대서울지하1층', '9qFvYeClMs2LG1oTBUQyuP88kHX7Vf1J0O', NULL);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('mutan', '무탄', 'mutan123', 'mutan@gmail.com', TO_DATE('19900302', 'yyyy-mm-dd'),'M', 'W5P5wjAFY78pyi0jbusaMhtrixkkWjYn80JwvLuIq7cUBvptOWtD6i2EnybZZjdupn9ZD5xvl5m5ogvE6sq0Sq78', 
    TO_DATE('20180912 042010', 'yyyy-mm-dd hh24:mi:ss') , '010-1456-0112', '02-549-9339', '서울 강남구 논현로176길 22 1층', 'zeQp5QMGhBQ1LyyFVKx3I82NDBQHRNnM1o', NULL);

INSERT INTO 회원(ID, 닉네임, 비밀번호, 이메일주소, 생년월일, 성별, 가입인증, 가입일자, 휴대전화번호, 일반전화번호, 주소, 지갑주소, 법정대리인번호)
    VALUES('song', '송림원', 'songlim123', 'songlim@gmail.com', TO_DATE('20050401', 'yyyy-mm-dd'),'M', 'r6Z3CvsnzaU0NZYWUA3Tjp1y4QAV5wbWvEjiALkfdOwfMwc2euXKr8KFGP3Cfd6RHCNvBlL1zhOc2rphpUBnKSQM', 
    TO_DATE('20170707 070707', 'yyyy-mm-dd hh24:mi:ss') , '010-7777-7677', '02-764-7970', '서울 성북구 동소문로 25-2', 'VU0zkywWXnla5u6L9p5QBo5bnVd8x68k4g', 3);
COMMIT;

rem 선호영화장르 테이블 생성

CREATE TABLE 선호영화장르(
    회원ID VARCHAR2(20),
    장르명 CHAR(30) CHECK(장르명 IN ('코미디', '로맨스', '공포','액션','SF','누아르','스릴러', '판타지','미스터리','애니메이션','전쟁','범죄','스포츠')),
    CONSTRAINT 선호영화장르_PK PRIMARY KEY (회원ID, 장르명),
    CONSTRAINT 선호영화_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE
);

INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('user1', '스포츠');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('user1', '전쟁');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('user1', '공포');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('coin', '전쟁');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('coin', '판타지');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('mutan', '범죄');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('mutan', '로맨스');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('mutan', '판타지');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('song', '애니메이션');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('song', '로맨스');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('lmayr', '미스터리');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('lmayr', '액션');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('snowman', 'SF');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('snowman', '코미디');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('snowman', '누아르');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('sunny', '미스터리');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('sunny', '액션');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('normal', 'SF');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('normal', '애니메이션');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('random', '공포');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('random', '로맨스');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('random', '판타지');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('lucky', '판타지');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('lucky', '액션');
INSERT INTO 선호영화장르(회원ID, 장르명) VALUES('lucky', '공포');
COMMIT;

rem 영화장르 테이블 생성

CREATE TABLE 영화장르(
    영화번호 INT,
    장르명 CHAR(30) CHECK(장르명 IN ('코미디', '로맨스', '공포','액션','SF','누아르','스릴러', '판타지','미스터리','애니메이션','전쟁','범죄','스포츠')),
    CONSTRAINT 영화장르_PK PRIMARY KEY (영화번호, 장르명),
    CONSTRAINT 장르_영화번호_FK FOREIGN KEY (영화번호) REFERENCES 영화(영화번호) ON DELETE CASCADE
);

INSERT INTO 영화장르 VALUES (1, '액션');
INSERT INTO 영화장르 VALUES (1, '범죄');
INSERT INTO 영화장르 VALUES (1, '코미디');
INSERT INTO 영화장르 VALUES (2, '액션');
INSERT INTO 영화장르 VALUES (2, '판타지');
INSERT INTO 영화장르 VALUES (2, 'SF');
INSERT INTO 영화장르 VALUES (3, '로맨스');
INSERT INTO 영화장르 VALUES (4, 'SF');
INSERT INTO 영화장르 VALUES (4, '액션');
INSERT INTO 영화장르 VALUES (5, '액션');
INSERT INTO 영화장르 VALUES (6, '액션');
INSERT INTO 영화장르 VALUES (7, '액션');
INSERT INTO 영화장르 VALUES (7, '애니메이션');
INSERT INTO 영화장르 VALUES (8, '로맨스');
INSERT INTO 영화장르 VALUES (9, '코미디');
INSERT INTO 영화장르 VALUES (9, '판타지');
INSERT INTO 영화장르 VALUES (9, '애니메이션');
INSERT INTO 영화장르 VALUES (10, '액션');
INSERT INTO 영화장르 VALUES (10, '판타지');
COMMIT;

rem 굿즈_판매게시글 테이블 생성

CREATE TABLE 굿즈_판매게시글(
    판매게시글_번호 INT,
    제목 VARCHAR2(60),
    굿즈이름 VARCHAR2(40),
    사진 VARCHAR2(50),
    가격 INT CHECK(가격 >= 0),
    위치 VARCHAR2(60),
    내용 VARCHAR2(500),
    조회수 INT DEFAULT 0,
    전화번호 CHAR(15),
    거래상태 CHAR(10) DEFAULT '예약 전',
    판매자_회원ID VARCHAR2(20),
    작성일시 DATE,
    CONSTRAINT 판매게시글_번호_PK PRIMARY KEY (판매게시글_번호),
    CONSTRAINT 게시글_판매자회원ID_FK FOREIGN KEY (판매자_회원ID) REFERENCES 회원(ID) ON DELETE SET NULL
);

INSERT INTO 굿즈_판매게시글(판매게시글_번호, 제목, 굿즈이름, 사진, 가격, 위치, 내용, 전화번호, 판매자_회원ID, 작성일시)
VALUES (1, '스파이더맨 필통 팔아요', '스파이더맨 필통', NULL, 10000, '한국기술교육대학교', '필통 상태 거의 새거고 살 때 3만원 주고 샀습니다.','010-1456-0112' ,'mutan',TO_DATE('20220604 140220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_판매게시글(판매게시글_번호, 제목, 굿즈이름, 사진, 가격, 위치, 내용, 전화번호, 판매자_회원ID, 작성일시)
VALUES (2, '어벤저스 포스터 팔아요', '어벤저스 포스터', 'img/goods_sale_post/2/포스터상태.png', 15000, '천안터미널', '어벤저스 포스터 팝니다 상태 좋아요', '010-1111-2222' ,'lucky',TO_DATE('20220504 140220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_판매게시글(판매게시글_번호, 제목, 굿즈이름, 사진, 가격, 위치, 내용, 전화번호, 판매자_회원ID, 작성일시)
VALUES (3, '포켓몬스터 지갑 팔아요', '포켓몬스터 지갑', 'img/goods_sale_post/3/지갑상태.png', 5000, '부산 해운대구', '포켓몬스터 지갑 상태보시면 알겠지만 깔끔하고 거의 새거입니다. 살 때 2만원 줬어요.', '010-7413-7251' ,'snowman',TO_DATE('20220304 130220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_판매게시글(판매게시글_번호, 제목, 굿즈이름, 사진, 가격, 위치, 내용, 전화번호, 판매자_회원ID, 작성일시)
VALUES (4, '아이언맨 마스크 ㅍㅍ', '아이언맨 마스크', NULL, 30000, '병천', '아이언맨 마스크 팝니다 5만원에 샀고 산지 1년 정도 됐는데 퀄리티 되게 좋아요','010-5123-4123' ,'coin',TO_DATE('20220807 110220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_판매게시글(판매게시글_번호, 제목, 굿즈이름, 사진, 가격, 위치, 내용, 전화번호, 판매자_회원ID, 작성일시)
VALUES (5, '손수 만든 닥터스트레인지 목걸이', '닥터스트레인지 목걸이', 'img/goods_sale_post/5/temp.png', 30000, '서울 강남', '제가 직접 만든 닥터스트레인지 목걸이 입니다. 어두울 때 빛도 납니다. ', '010-7777-7677' ,'song',TO_DATE('20221204 080220', 'yyyy-mm-dd hh24:mi:ss') );

INSERT INTO 굿즈_판매게시글(판매게시글_번호, 제목, 굿즈이름, 사진, 가격, 위치, 내용, 전화번호, 판매자_회원ID, 작성일시)
VALUES (6, '스파이더맨 피규어 팔아요~', '스파이더맨 피규어', 'img/goods_sale_post/6/피규어.png', 100000, '부산 해운대구', '스파이더맨 피규어입니다. 공장에서 만든게 아니라 피규어 공방에서 산 겁니다.', '010-5555-5656' ,'sunny',TO_DATE('20220612 140220', 'yyyy-mm-dd hh24:mi:ss') );

INSERT INTO 굿즈_판매게시글(판매게시글_번호, 제목, 굿즈이름, 사진, 가격, 위치, 내용, 전화번호, 판매자_회원ID, 작성일시)
VALUES (7, '겨울왕국 티셔츠 팝니다.', '겨울영국 엘사 티셔츠', 'img/goods_sale_post/7/temp.png', 5000, '강원 원주', '겨울왕국 티셔츠 입니다. 사이즈는 L 입니다. 집에서 편하게 입기 좋아요~ ', '010-7777-7677' ,'random',TO_DATE('20220611 141420', 'yyyy-mm-dd hh24:mi:ss') );

INSERT INTO 굿즈_판매게시글(판매게시글_번호, 제목, 굿즈이름, 사진, 가격, 위치, 내용, 전화번호, 판매자_회원ID, 작성일시)
VALUES (8, '올라프 피규어 팔아요~', '겨울왕국 올라프 피규어', 'img/goods_sale_post/8/피규어.png', 5000, '강원 원주', '겨울왕국 올라프 피규어 입니다. 급처합니다. ', '010-7777-7677' ,'random',TO_DATE('20220611 151420', 'yyyy-mm-dd hh24:mi:ss') );

COMMIT;

rem 굿즈_후기 테이블 생성

CREATE TABLE 굿즈_후기(
  후기번호 INT,
  내용 VARCHAR2(500),
  굿즈평점 INT CHECK(굿즈평점 BETWEEN 1 AND 10), 
  작성회원ID VARCHAR2(20),
  작성일시 DATE,
  굿즈번호 INT,
  CONSTRAINT 굿즈후기_PK PRIMARY KEY (후기번호),
  CONSTRAINT 굿후_작성회원ID_FK FOREIGN KEY (작성회원ID) REFERENCES 회원(ID) ON DELETE SET NULL,
  CONSTRAINT 굿후_굿즈번호_FK FOREIGN KEY (굿즈번호) REFERENCES 굿즈_상품(상품번호) ON DELETE CASCADE
);

-- 굿즈_후기
INSERT INTO 굿즈_후기 VALUES(1,'실제 영화에서 보던거랑 엄청 비슷하게 생겼네요. 아이들이 너무 좋아해요.',7,'user1',TO_DATE('20190315','yyyy-mm-dd'),2);
INSERT INTO 굿즈_후기 VALUES(2,'사진으로 봤던거 보다 스파이더맨 디자인이 더 좋았습니다.',8,'lmayr',TO_DATE('20190505','yyyy-mm-dd'),5);
INSERT INTO 굿즈_후기 VALUES(3,'배송이 엄청 늦었습니다. 거기다가 피규어 일부분이 파손되어 왔어요. 환불 부탁드립니다.',2,'sunny',TO_DATE('20190610','yyyy-mm-dd'),3);
INSERT INTO 굿즈_후기 VALUES(4,'어벤져스 찐 팬인 입장에서 이거 정말 갖고 싶었던건데 겨우 샀네요. 좀 비싸긴 한데 그만큼 품질이 좋아서 만족했습니다. 집에 잘 전시해두겠습니다.',10,'lucky', TO_DATE('20191025' , 'yyyy-mm-dd'),8);
INSERT INTO 굿즈_후기 VALUES(5,'제가 트랜스포머 팬이라 이런거 모으고 있는데 생각보다는 괜찮았습니다. 다만 도색이 벗겨진 부분이 있어서 좀 많이 아쉬웠어요.',5,'normal',TO_DATE('20200406','yyyy-mm-dd'),12);
INSERT INTO 굿즈_후기 VALUES(6,'디자인은 나쁘지 않은 것 같습니다. 다만 그에 비해 가격이 좀 비싼거 같아요.',6,'random',TO_DATE('20200511','yyyy-mm-dd'),13);
INSERT INTO 굿즈_후기 VALUES(7,'이번에 아이 장난감으로 사줬는데 좋아하네요. 크기가 커서 안 맞긴한데 그래도 괜찮은것 같습니다.',7,'song',TO_DATE('20200714','yyyy-mm-dd'),7);
INSERT INTO 굿즈_후기 VALUES(8,'이번에 친구 선물로 주려고 샀는데 가격도 괜찮고 크기도 적당하니 좋았어요.',8,'mutan',TO_DATE('20211010','yyyy-mm-dd'),16);
INSERT INTO 굿즈_후기 VALUES(9,'제가 마블팬이라 이런거 하나 사고 싶었는데 마침 지갑을 팔길래 샀더니 괜찮네요. 지갑 디자인이 마음에 듭니다.',9,'snowman',TO_DATE('20211223','yyyy-mm-dd'),19);
INSERT INTO 굿즈_후기 VALUES(10,'이번에 범죄도시2 영화를 너무 재밌게 봐서 만화책도 보고싶다는 생각을 했어요. 보니까 만화책도 나름 재밌게 봤어요. ',7,'coin',TO_DATE('20220620','yyyy-mm-dd'),20);

COMMIT;

rem 커뮤니티_게시글 테이블 생성

CREATE TABLE 커뮤니티_게시글(
  게시글_번호 INT,
  제목 VARCHAR2(100),
  조회수 INT DEFAULT 0,
  내용 VARCHAR2(1000),
  공지여부 CHAR(1) DEFAULT '0' CHECK(공지여부 IN ('0', '1')),
  커뮤니티번호 INT,
  작성회원ID VARCHAR(20),
  작성일시 DATE, -- DATETIME -> DATE
  CONSTRAINT 커뮤니티게시글_PK PRIMARY KEY (게시글_번호),
  CONSTRAINT 커게_커뮤니티번호_FK FOREIGN KEY (커뮤니티번호) REFERENCES 커뮤니티(커뮤니티_번호) ON DELETE SET NULL,
  CONSTRAINT 커게_작성회원ID_FK FOREIGN KEY (작성회원ID) REFERENCES 회원(ID) ON DELETE SET NULL
);

INSERT INTO 커뮤니티_게시글( 게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES( 1, '오늘 본 영화: 그래비티', '눈이 즐거워따 노래가 조아따 아주아주 재미써따 아저씨 살아있는 건 줄 알았ㄴㄷㄴ데 구라여서 슬퍼따ㅜ끗', 2 ,'user1', TO_DATE('20220608 140220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글(게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES( 2, '기생충같은 영화 추천해주세요', '영화 안 좋아해서 잘 안 보는데 기생충 본 이후로 다른 최신 영화도 좀 봤는데 하나같이 다 내 스타일 아닌거 같더라 현실적인 느낌? 뭔가 좀 사회 비판 느낌도 나고 영화 본거 거의 없으니까 아무거나 추천 해줄수 있나..?', 2 ,'user1', TO_DATE('20220609 130220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글( 게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES ( 3, '명작 영화 추천좀', '공포, 쿠엔틴, 마블 빼고', 2 ,'snowman', TO_DATE('20220610 130220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글( 게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES( 4, '지금 우리학교는 정말 재미있네요', '옛날에 웹툰 재미있게 봤었는데 드라마도 정말 재미있네요 안보신 분들 추천합니다.', 9 ,'mutan', TO_DATE('20220514 140220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글( 게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES(5, '롤 아케인 보신분?', '요새 많이 보는거 같은데 롤 잘 몰라도 재미있나요?', 9 ,'mutan', TO_DATE('20220510 140220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글(게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES( 6, '마블이 진리다', '마블을 볼 때면 가슴이 웅장해진다', 4 ,'lucky', TO_DATE('20220401 140220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글( 게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES( 7, '최고로 재미있는 마블영화는 뭐라고 생각함?', '나는 어벤저스', 4 ,'lucky', TO_DATE('20220402 110220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글( 게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES( 8, '최고로 재미있는 디즈니영화는 뭐라고 생각함?', '나는 겨울왕국', 5 ,'lmayr', TO_DATE('20220403 100220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글( 게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES(9, '이번에 나온 곤지암 보신분?', '공포영화 잘 못보는데 친구들이 보러가자고 하네요 볼만한가요?', 10 ,'coin', TO_DATE('20220408 090220', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 커뮤니티_게시글(게시글_번호, 제목, 내용, 커뮤니티번호, 작성회원ID, 작성일시) VALUES(10, '고수익 보장 집에서 누워서 돈벌고 싶은 사람~ 여기여기모여라', '인스타에 sunny 를 검색하고 게시글보면 돈버는법 나와있음', 10 ,'sunny', TO_DATE('20220412 090220', 'yyyy-mm-dd hh24:mi:ss'));

COMMIT;

rem 커뮤니티_댓글 테이블 생성

CREATE TABLE 커뮤니티_댓글(
  댓글번호 INT,
  내용 VARCHAR2(500),
  게시글번호 INT,
  작성회원ID VARCHAR2(20),
  작성일시 DATE,
  CONSTRAINT 댓글번호_PK PRIMARY KEY (댓글번호),
  CONSTRAINT 커댓_게시글번호_FK FOREIGN KEY (게시글번호) REFERENCES 커뮤니티_게시글(게시글_번호) ON DELETE CASCADE,
  CONSTRAINT 커댓_작성회원ID_FK FOREIGN KEY (작성회원ID) REFERENCES 회원(ID) ON DELETE SET NULL
);

INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시) VALUES (1, '디즈니 영화추천드립니다!!!!', 3, 'lucky', TO_DATE('20220615 105123' , 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시) VALUES (2, '아!! 롤 몰라도 정말 재밌어요 꼭 보세요 ><', 5, 'song', TO_DATE('20220524 151231' , 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시) VALUES(3, '클레멘타인 추천합니다 꼭 보셈', 3, 'sunny', TO_DATE('20220612 200322','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시) VALUES(4, '어벤져스가 국룰이지ㅇㅇ', 7, 'random', TO_DATE('20220403 171005','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시) VALUES (5, '홍보는 다른데가서 하세요', 10, 'user1', TO_DATE('20220412 201910' , 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시) VALUES (6, '여기는 영화커뮤니티입니다.', 10, 'song', TO_DATE('20220412 191910' , 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시 ) VALUES(7,'아닌데? 재미없는데?',4,'user1', TO_DATE('20220720 202206' , 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시 ) VALUES(8,'저도 글쓴이처럼 열심히 돈을 벌고싶었던 때가 있었습니다. 하지만 삶에서 돈이 차지하는 부분은 그렇게 크지않다고 조언하고 싶네요. 여러분들이 어떤 삶을 살지는 여러분의 마음가짐이 정하는 겁니다. 돈에 목매달며 힘들게 살기보다 더 긍정적이고 활기찬 삶을 사는것이 낫다고 생각합니다. 곧 저녁입니다. 다들 맛있는 저녁 하십시오. @))))))))',10,'user1',TO_DATE('20220930 174839' , 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시 ) VALUES(9,'그거 봤는데 주인공 죽더라 ㅋ',9,'random', TO_DATE('20220409 221103' , 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO 커뮤니티_댓글(댓글번호, 내용 , 게시글번호 , 작성회원ID , 작성일시 ) VALUES(10,'일해서 돈벌어라 ㅋ',10,'mutan', TO_DATE('20220413 083220' , 'yyyy-mm-dd hh24:mi:ss'));


COMMIT;

rem 영화인_선호하다 테이블 생성

CREATE TABLE 영화인_선호하다(
  회원ID VARCHAR2(20),
  영화인_id INT,
  CONSTRAINT 영화인선호하다_PK PRIMARY KEY (회원ID, 영화인_id),
  CONSTRAINT 영선_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
  CONSTRAINT 영선_영화인id_FK FOREIGN KEY (영화인_id) REFERENCES 영화인(영화인_id) ON DELETE CASCADE
);

INSERT INTO 영화인_선호하다 VALUES('user1',2);
INSERT INTO 영화인_선호하다 VALUES('snowman',3);
INSERT INTO 영화인_선호하다 VALUES('sunny',2);
INSERT INTO 영화인_선호하다 VALUES('coin',1);
INSERT INTO 영화인_선호하다 VALUES('normal',5);
INSERT INTO 영화인_선호하다 VALUES('random',6);
INSERT INTO 영화인_선호하다 VALUES('lucky',9);
INSERT INTO 영화인_선호하다 VALUES('lmayr',10);
INSERT INTO 영화인_선호하다 VALUES('mutan',7);
INSERT INTO 영화인_선호하다 VALUES('song',2);
COMMIT;


rem 시청_등록하다 테이블 생성

CREATE TABLE 시청_등록하다(
  회원ID VARCHAR2(20),
  영화번호 INT,
  CONSTRAINT 시청등록하다_PK PRIMARY KEY (회원ID, 영화번호),
  CONSTRAINT 시등_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
  CONSTRAINT 시등_영화번호_FK FOREIGN KEY (영화번호) REFERENCES 영화(영화번호) ON DELETE CASCADE
);

-- 시청_등록하다
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('user1',1);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('sunny',3);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('song',2);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('song',7);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('lucky',9);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('mutan',4);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('mutan',2);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('random',1);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('coin',4);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('coin',2);
INSERT INTO 시청_등록하다(회원ID,영화번호) VALUES ('coin',6);
COMMIT;

rem 감상평_작성하다 테이블 생성

CREATE TABLE 감상평_작성하다(
  회원ID VARCHAR2(20),
  영화번호 INT,
  작성일시 DATE, 
  영화평점 INT CHECK(영화평점 BETWEEN 1 AND 10), 
  감상내용 VARCHAR2(1000),
  CONSTRAINT 감상평_작성하다_PK PRIMARY KEY (회원ID, 영화번호),
  CONSTRAINT 작성_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
  CONSTRAINT 작성_영화번호_FK FOREIGN KEY (영화번호) REFERENCES 영화(영화번호) ON DELETE CASCADE
);

INSERT INTO 감상평_작성하다(회원ID, 영화번호, 작성일시, 영화평점, 감상내용)
    VALUES('user1',1,TO_DATE('20220604' , 'yyyy-mm-dd'),10,'잼써잼써ㅠ 마블리 펀치 사운드 장난 아니니까 꼭 극장에서 보세요ㅋㅋ');

INSERT INTO 감상평_작성하다(회원ID, 영화번호, 작성일시, 영화평점, 감상내용)
    VALUES('sunny',3,TO_DATE('20220705' , 'yyyy-mm-dd'),9,'와..그냥 감탄밖엔 안 나온다. 영상미며 음악이며..조폭, 건달, 검사, 신파 좋아하고 실험을 꺼리는 한국의 기성 영화인들 반성해라. 이제 겨우 두 편 만든 신인감독이 이 정도다');
    
INSERT INTO 감상평_작성하다(회원ID, 영화번호, 작성일시, 영화평점, 감상내용)
    VALUES('song',7,TO_DATE('20220505' , 'yyyy-mm-dd'),10,'미래가 보이지 않을 때는 지금 해야할 일을 해야 해');
    
INSERT INTO 감상평_작성하다(회원ID, 영화번호, 작성일시, 영화평점, 감상내용)
    VALUES('lucky',9,TO_DATE('20220505' , 'yyyy-mm-dd'),8,'이제는 끝나지만 슈렉 시리즈만의 동화 재구성은 잊을수가 없을 것');

INSERT INTO 감상평_작성하다(회원ID, 영화번호, 작성일시, 영화평점, 감상내용)
    VALUES('mutan',4,TO_DATE('20220505' , 'yyyy-mm-dd'),10,'최고다. 후속작은 재미없을 거라는 편견을 깨준영화.');

INSERT INTO 감상평_작성하다(회원ID, 영화번호, 작성일시, 영화평점, 감상내용)
    VALUES('mutan',2,TO_DATE('20220505' , 'yyyy-mm-dd'),5,'음표 날리는거 유치해서 피식했음ㅎㅎ');

INSERT INTO 감상평_작성하다(회원ID, 영화번호, 작성일시, 영화평점, 감상내용)
    VALUES('random',1,TO_DATE('20220505' , 'yyyy-mm-dd'),10,'액션과 유머 적절한 5:5였다. 꼭 사운드 좋은 곳에서 보길');

INSERT INTO 감상평_작성하다(회원ID, 영화번호, 작성일시, 영화평점, 감상내용)
    VALUES('coin',4,TO_DATE('20220505' , 'yyyy-mm-dd'),10,'최고!');

COMMIT;

rem 영화인_참여하다 테이블 생성

CREATE TABLE 영화인_참여하다(
  영화인_id INT,
  영화번호 INT,
  참여유형 CHAR(10),
  CONSTRAINT 영화인참여하다_PK PRIMARY KEY (영화인_id, 영화번호, 참여유형),
  CONSTRAINT 참여_영화인id_FK FOREIGN KEY (영화인_id) REFERENCES 영화인(영화인_id) ON DELETE CASCADE,
  CONSTRAINT 참여_영화번호id_FK FOREIGN KEY (영화번호) REFERENCES 영화(영화번호)ON DELETE CASCADE
);

INSERT INTO 영화인_참여하다 VALUES (1, 1, '배우');
INSERT INTO 영화인_참여하다 VALUES (2, 3, '배우');
INSERT INTO 영화인_참여하다 VALUES (3, 8, '감독');
INSERT INTO 영화인_참여하다 VALUES (3, 8, '배우');
INSERT INTO 영화인_참여하다 VALUES (3, 8, '제작진');
INSERT INTO 영화인_참여하다 VALUES (4, 7, '감독');
INSERT INTO 영화인_참여하다 VALUES (5, 4, '감독');
INSERT INTO 영화인_참여하다 VALUES (5, 4, '배우');
INSERT INTO 영화인_참여하다 VALUES (6, 4, '배우');
INSERT INTO 영화인_참여하다 VALUES (8, 2, '배우');
INSERT INTO 영화인_참여하다 VALUES (10, 3, '감독');

COMMIT;

rem 굿즈_상품_구매하다 테이블 생성

CREATE TABLE 굿즈_상품_구매하다(
  회원ID VARCHAR2(20),
  굿즈번호 INT,
  구매일 DATE, 
  구매가격 INT,
  구매개수 INT,
  배송지 VARCHAR2(100),
  결제방법 VARCHAR2(25),
  CONSTRAINT 굿즈상품구매하다_PK PRIMARY KEY (회원ID, 굿즈번호, 구매일),
  CONSTRAINT 상품구매_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
  CONSTRAINT 상품구매_굿즈번호_FK FOREIGN KEY (굿즈번호) REFERENCES 굿즈_상품(상품번호) ON DELETE CASCADE
);

INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('user1',1,TO_DATE('20220605 141413' , 'yyyy-mm-dd hh24:mi:ss'),30000,2,'서울특별시 강남구 강남대로 328','VISA');

INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('sunny',3,TO_DATE('20220507 131413' , 'yyyy-mm-dd hh24:mi:ss'),70000,1,'강원도 춘천시 시청로 43','카카오페이');

INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('song',14,TO_DATE('20221205 121413' , 'yyyy-mm-dd hh24:mi:ss'),180000,2,'경기도 수원시 영통구 삼성로 129(매탄동)','신용카드');

INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('mutan',20,TO_DATE('20220328 111413' , 'yyyy-mm-dd hh24:mi:ss'),100000,4,'서울시 구로구 구로본동 1258 SK텔레콤 고객센터 1층','신용카드');
    
INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('random',17,TO_DATE('20221217 101413' , 'yyyy-mm-dd hh24:mi:ss'),14000,1,'서울특별시 도봉구 창1동 296-5','문화상품권');
    
INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('coin',12,TO_DATE('20220202 191413' , 'yyyy-mm-dd hh24:mi:ss'),80000,2,'서울 강남구 논현로176길 22 3층','해피머니 상품권');
    
INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('sunny',12,TO_DATE('20220508 181413' , 'yyyy-mm-dd hh24:mi:ss'),80000,2,'서울 강남구 논현로176길 22 1층','토스 결제');
    
INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('normal',5,TO_DATE('20220905 091413' , 'yyyy-mm-dd hh24:mi:ss'),300000,10,'경기도 의정부시 민락로 195 c동 1001호','PAYCO');
    
INSERT INTO 굿즈_상품_구매하다(회원ID, 굿즈번호, 구매일, 구매가격, 구매개수, 배송지, 결제방법)
    VALUES('snowman',1,TO_DATE('20220324 081413' , 'yyyy-mm-dd hh24:mi:ss'),200000,1,'서울특별시 도봉구 창1동 296-5','모바일 결제');

COMMIT;

rem 굿즈_영화_관련되다 테이블 생성

CREATE TABLE 굿즈_영화_관련되다(
  굿즈번호 INT,
  영화번호 INT,
  CONSTRAINT 굿즈영화관련되다_PK PRIMARY KEY (굿즈번호, 영화번호),
  CONSTRAINT 관련_굿즈번호_FK FOREIGN KEY (굿즈번호) REFERENCES 굿즈_상품(상품번호) ON DELETE CASCADE,
  CONSTRAINT 관련_영화번호_FK FOREIGN KEY (영화번호) REFERENCES 영화(영화번호) ON DELETE CASCADE
);

INSERT INTO 굿즈_영화_관련되다 VALUES (3,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (3,5);
INSERT INTO 굿즈_영화_관련되다 VALUES (3,6);
INSERT INTO 굿즈_영화_관련되다 VALUES (4,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (4,5);
INSERT INTO 굿즈_영화_관련되다 VALUES (4,6);
INSERT INTO 굿즈_영화_관련되다 VALUES (5,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (5,5);
INSERT INTO 굿즈_영화_관련되다 VALUES (5,6);
INSERT INTO 굿즈_영화_관련되다 VALUES (6,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (6,4);
INSERT INTO 굿즈_영화_관련되다 VALUES (6,5);
INSERT INTO 굿즈_영화_관련되다 VALUES (6,6);
INSERT INTO 굿즈_영화_관련되다 VALUES (8,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (8,4);
INSERT INTO 굿즈_영화_관련되다 VALUES (8,5);
INSERT INTO 굿즈_영화_관련되다 VALUES (8,6);
INSERT INTO 굿즈_영화_관련되다 VALUES (9,4);
INSERT INTO 굿즈_영화_관련되다 VALUES (9,6);
INSERT INTO 굿즈_영화_관련되다 VALUES (10,4);
INSERT INTO 굿즈_영화_관련되다 VALUES (14,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (14,4);
INSERT INTO 굿즈_영화_관련되다 VALUES (14,5);
INSERT INTO 굿즈_영화_관련되다 VALUES (14,6);
INSERT INTO 굿즈_영화_관련되다 VALUES (15,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (15,4);
INSERT INTO 굿즈_영화_관련되다 VALUES (15,5);
INSERT INTO 굿즈_영화_관련되다 VALUES (15,6);
INSERT INTO 굿즈_영화_관련되다 VALUES (18,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (19,2);
INSERT INTO 굿즈_영화_관련되다 VALUES (3,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (4,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (5,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (6,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (7,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (8,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (9,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (10,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (11,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (14,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (15,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (18,11);
INSERT INTO 굿즈_영화_관련되다 VALUES (19,11);

COMMIT;

rem 행사_참여_신청하다 테이블 생성

CREATE TABLE 행사_참여_신청하다(
  회원ID VARCHAR2(20),
  행사번호 INT,
  참여상태 CHAR(15) DEFAULT '신청 완료',
  CONSTRAINT 행사_참여_신청하다_PK PRIMARY KEY (회원ID, 행사번호),
  CONSTRAINT 신청_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
  CONSTRAINT 신청_행사번호_FK FOREIGN KEY (행사번호) REFERENCES 행사(행사번호) ON DELETE CASCADE
);

INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('user1',8);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('snowman',3);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('snowman',5);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('sunny',6);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('coin',1);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('lmayr',1);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('mutan',5);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('mutan',8);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('mutan',4);
INSERT INTO 행사_참여_신청하다(회원ID,행사번호) VALUES ('song',10);
COMMIT;

rem 커뮤니티_게시글_의견남기다 테이블 생성

CREATE TABLE 커뮤니티_게시글_의견남기다(
  회원ID VARCHAR2(20),
  게시글번호 INT,
  좋아요싫어요구분 CHAR(9),
  CONSTRAINT 커뮤니티_게시글_의견남기다_PK PRIMARY KEY (회원ID, 게시글번호),
  CONSTRAINT 의견_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
  CONSTRAINT 의견_게시글번호_FK FOREIGN KEY (게시글번호) REFERENCES 커뮤니티_게시글(게시글_번호) ON DELETE CASCADE
);

INSERT INTO 커뮤니티_게시글_의견남기다(회원ID, 게시글번호, 좋아요싫어요구분) VALUES('user1', 10, '싫어요');

INSERT INTO 커뮤니티_게시글_의견남기다(회원ID, 게시글번호, 좋아요싫어요구분) VALUES('song', 10, '싫어요');

INSERT INTO 커뮤니티_게시글_의견남기다(회원ID, 게시글번호, 좋아요싫어요구분) VALUES('snowman', 10, '싫어요');

INSERT INTO 커뮤니티_게시글_의견남기다(회원ID, 게시글번호, 좋아요싫어요구분) VALUES('lucky', 10, '싫어요');

INSERT INTO 커뮤니티_게시글_의견남기다(회원ID, 게시글번호, 좋아요싫어요구분) VALUES('lmayr', 10, '싫어요');

INSERT INTO 커뮤니티_게시글_의견남기다(회원ID, 게시글번호, 좋아요싫어요구분) VALUES('lmayr', 6, '좋아요');

INSERT INTO 커뮤니티_게시글_의견남기다(회원ID, 게시글번호, 좋아요싫어요구분) VALUES('song', 4, '좋아요');

INSERT INTO 커뮤니티_게시글_의견남기다(회원ID, 게시글번호, 좋아요싫어요구분) VALUES('normal', 4, '좋아요');

COMMIT;

rem 커뮤니티_게시글_신고하다 테이블 생성

CREATE TABLE 커뮤니티_게시글_신고하다(
  회원ID VARCHAR2(20),
  게시글번호 INT,
  신고일시 DATE, 
  신고사유  VARCHAR2(500),
  CONSTRAINT 커뮤니티게시글신고하다_PK PRIMARY KEY (회원ID, 게시글번호),
  CONSTRAINT 신고_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
  CONSTRAINT 신고_게시글번호_FK FOREIGN KEY (게시글번호) REFERENCES 커뮤니티_게시글(게시글_번호) ON DELETE CASCADE
);

INSERT INTO 커뮤니티_게시글_신고하다(회원ID, 게시글번호, 신고일시, 신고사유) VALUES('song',10,TO_DATE('20220413 101825' , 'yyyy-mm-dd hh24:mi:ss'),'불법성 홍보');
INSERT INTO 커뮤니티_게시글_신고하다(회원ID, 게시글번호, 신고일시, 신고사유) VALUES('user1',10,TO_DATE('20220414 151402' , 'yyyy-mm-dd hh24:mi:ss'),'이상한 내용으로 홍보를 하고 있습니다');
INSERT INTO 커뮤니티_게시글_신고하다(회원ID, 게시글번호, 신고일시, 신고사유) VALUES('lucky',10,TO_DATE('20220414 135113' , 'yyyy-mm-dd hh24:mi:ss'),'게시글의 형태와 맞지 않는 게시글입니다.');
INSERT INTO 커뮤니티_게시글_신고하다(회원ID, 게시글번호, 신고일시, 신고사유) VALUES('sunny',9,TO_DATE('20220412 111534' , 'yyyy-mm-dd hh24:mi:ss'),'.');

COMMIT;

rem 게임_기록하다 테이블 생성

CREATE TABLE 게임_기록하다(
    게임번호 INT,
    회원ID VARCHAR2(20),
    종료일시 DATE, 
    게임점수 INT,
    CONSTRAINT 게임기록하다_PK PRIMARY KEY (게임번호, 회원ID, 종료일시),
    CONSTRAINT 기록_게임번호_FK FOREIGN KEY (게임번호) REFERENCES 게임(등록번호) ON DELETE CASCADE,
    CONSTRAINT 기록_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE
);

INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(73605, 'coin', TO_DATE('20220301 140220' , 'yyyy-mm-dd hh24:mi:ss'),23);

INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(54099, 'sunny', TO_DATE('20220405 110320' , 'yyyy-mm-dd hh24:mi:ss'),50);

INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(50570, 'normal', TO_DATE('20220521 140230' , 'yyyy-mm-dd hh24:mi:ss'),90);
    
INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(74705, 'coin', TO_DATE('20221217 160240' , 'yyyy-mm-dd hh24:mi:ss'),51);
    
INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(58308, 'user1', TO_DATE('20221113 180120' , 'yyyy-mm-dd hh24:mi:ss'),70);
    
INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(97449, 'song', TO_DATE('20220505 145230' , 'yyyy-mm-dd hh24:mi:ss'),182);
    
INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(81451, 'mutan', TO_DATE('20220607 120510' , 'yyyy-mm-dd hh24:mi:ss'),130);
    
INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(37227, 'lucky', TO_DATE('20220609 030512' , 'yyyy-mm-dd hh24:mi:ss'),120);
    
INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(68673, 'random', TO_DATE('20220203 121015' , 'yyyy-mm-dd hh24:mi:ss'),105);
    
INSERT INTO 게임_기록하다(게임번호, 회원ID, 종료일시, 게임점수)
    VALUES(97449, 'sunny', TO_DATE('20220328 131816' , 'yyyy-mm-dd hh24:mi:ss'),93);

COMMIT;

rem 게임_굿즈증정하다 테이블 생성

CREATE TABLE 게임_굿즈증정하다(
    게임번호 INT,
    회원ID VARCHAR2(20),
    배송일시 DATE, 
    상품개수 INT,
    배송지 VARCHAR2(100),
    연도 INT,
    분기 INT,
    CONSTRAINT 게임굿즈증정하다_PK PRIMARY KEY (게임번호, 회원ID, 배송일시, 연도, 분기),
    CONSTRAINT 굿즈증정_게임번호_FK FOREIGN KEY (게임번호) REFERENCES 게임(등록번호) ON DELETE CASCADE,
    CONSTRAINT 굿즈증정_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE
);

INSERT INTO 게임_굿즈증정하다(게임번호, 회원ID, 배송일시, 상품개수, 배송지, 연도, 분기)
    VALUES(73605,'coin',TO_DATE('20220501 140000' , 'yyyy-mm-dd hh24:mi:ss'),1,'서울특별시 강남구 강남대로 328',2022,2);

INSERT INTO 게임_굿즈증정하다(게임번호, 회원ID, 배송일시, 상품개수, 배송지, 연도, 분기)
    VALUES(54099,'sunny',TO_DATE('20220605 140000' , 'yyyy-mm-dd hh24:mi:ss'),2,'강원도 춘천시 시청로 43',2022,2);
 
INSERT INTO 게임_굿즈증정하다(게임번호, 회원ID, 배송일시, 상품개수, 배송지, 연도, 분기)
    VALUES(50570,'normal',TO_DATE('20220721 140000' , 'yyyy-mm-dd hh24:mi:ss'),1,'서울시 구로구 구로본동 1258 SK텔레콤 고객센터 3층',2022,3);
 
INSERT INTO 게임_굿즈증정하다(게임번호, 회원ID, 배송일시, 상품개수, 배송지, 연도, 분기)
    VALUES(74705,'coin',TO_DATE('20230217 140000' , 'yyyy-mm-dd hh24:mi:ss'),2,'서울특별시 도봉구 창1동 296-5',2023,1);
 
INSERT INTO 게임_굿즈증정하다(게임번호, 회원ID, 배송일시, 상품개수, 배송지, 연도, 분기)
    VALUES(58308,'user1',TO_DATE('20230113 140000' , 'yyyy-mm-dd hh24:mi:ss'),2,'서울 강남구 논현로176길 22 3층',2023,1);

INSERT INTO 게임_굿즈증정하다(게임번호, 회원ID, 배송일시, 상품개수, 배송지, 연도, 분기)
    VALUES(97449,'song',TO_DATE('20220705 140000' , 'yyyy-mm-dd hh24:mi:ss'),2,'서울특별시 도봉구 창2동 200-5',2022,3); 

INSERT INTO 게임_굿즈증정하다(게임번호, 회원ID, 배송일시, 상품개수, 배송지, 연도, 분기)
    VALUES(68673,'random',TO_DATE('20220403 140000' , 'yyyy-mm-dd hh24:mi:ss'),2,'경기도 의정부시 민락로 195 c동 1001호',2022,2); 

COMMIT;

rem 증정상품이되다 테이블 생성


CREATE TABLE 증정상품이되다(
    굿즈번호 INT,
    게임번호 INT,
    연도 INT,
    분기 INT,
    CONSTRAINT 증정상품이되다_PK PRIMARY KEY (굿즈번호, 게임번호, 연도, 분기),
    CONSTRAINT 증정상품_굿즈번호_FK FOREIGN KEY (굿즈번호) REFERENCES 굿즈_상품(상품번호) ON DELETE CASCADE,
    CONSTRAINT 증정상품_게임번호_FK FOREIGN KEY (게임번호) REFERENCES 게임(등록번호) ON DELETE CASCADE
);

INSERT INTO 증정상품이되다(굿즈번호, 게임번호, 연도, 분기) VALUES(1,73605,2022,2);
INSERT INTO 증정상품이되다(굿즈번호, 게임번호, 연도, 분기) VALUES(5,54099,2022,2);
INSERT INTO 증정상품이되다(굿즈번호, 게임번호, 연도, 분기) VALUES(9,50570,2022,2);
INSERT INTO 증정상품이되다(굿즈번호, 게임번호, 연도, 분기) VALUES(4,74705,2022,1);
INSERT INTO 증정상품이되다(굿즈번호, 게임번호, 연도, 분기) VALUES(10,58308,2022,4);
INSERT INTO 증정상품이되다(굿즈번호, 게임번호, 연도, 분기) VALUES(13,97449,2022,2);
INSERT INTO 증정상품이되다(굿즈번호, 게임번호, 연도, 분기) VALUES(18,68673,2022,1);

COMMIT;

rem 경매_참여하다 테이블 생성

CREATE TABLE 경매_참여하다(
    NFT상품토큰_ID CHAR(78),
    회원ID  VARCHAR2(20),
    제시일시 DATE,
    제시가격 NUMBER(38,18) CHECK(제시가격 >= 0),
    낙찰여부 CHAR(9) DEFAULT '미낙찰',
    CONSTRAINT 경매참여하다_PK PRIMARY KEY (NFT상품토큰_ID, 회원ID,제시일시),
    CONSTRAINT 경매참여_NFT상품토큰ID_FK FOREIGN KEY (NFT상품토큰_ID) REFERENCES NFT_경매상품(토큰ID) ON DELETE CASCADE,
    CONSTRAINT 경매참여_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE
);

INSERT INTO 경매_참여하다 VALUES('CcgbznvYAFR4dh76Vhx94i1kvQ3kvD0rXd3NkN0PStV4gCOjBVN2HlXzYRrKEt1NI2pIZoo545qcn9','coin',TO_DATE('20221121 121210','yyyy-mm-dd hh24:mi:ss'),0.5 ,'낙찰');
INSERT INTO 경매_참여하다 VALUES('zeUPvLPVJlUp9XDnOdI7w5wGrtFA2XA0Fefj9gJIGEzBxV45crxAP79faKJFhlJXdB4QI9F5Lz4y8a','lucky',TO_DATE('20220624 111210','yyyy-mm-dd hh24:mi:ss'),0.41,'낙찰');

INSERT INTO 경매_참여하다 VALUES('4gzK0q44750UrrMluxAcLzbaGd5h0LStBjCPVg1bOOubksGya54EsI2sPvq36E2lw78gwDiNncBpQs','coin',TO_DATE('20220817 111210','yyyy-mm-dd hh24:mi:ss'),0.4,'낙찰');
INSERT INTO 경매_참여하다 VALUES('4gzK0q44750UrrMluxAcLzbaGd5h0LStBjCPVg1bOOubksGya54EsI2sPvq36E2lw78gwDiNncBpQs','mutan',TO_DATE('20220817 101210','yyyy-mm-dd hh24:mi:ss'),0.25,'미낙찰');

INSERT INTO 경매_참여하다 VALUES('osQT2HVoDBGozrXWVo0CBUwQMilcxrdmvACaPNRV4w4Zl4dvwflR6ARjduUF9ZDv7tKKsArjCYyTor','snowman',TO_DATE('20220915 091210','yyyy-mm-dd hh24:mi:ss'),1,'낙찰');

INSERT INTO 경매_참여하다 VALUES('tYA5TwjEqjg3OtvL1XMjGWYDZ9JchDTDxY4OHMezOpjlTpNKvmRa5fW47jpIVXb9AgSrdcmu8uf26v','normal',TO_DATE('20221017 091210','yyyy-mm-dd hh24:mi:ss'),1.4,'낙찰');
INSERT INTO 경매_참여하다 VALUES('tYA5TwjEqjg3OtvL1XMjGWYDZ9JchDTDxY4OHMezOpjlTpNKvmRa5fW47jpIVXb9AgSrdcmu8uf26v','user1',TO_DATE('20221017 081210','yyyy-mm-dd hh24:mi:ss'),0.15,'미낙찰');

INSERT INTO 경매_참여하다 VALUES('OPqSvrWvXX27x4L3bUT2J8sOBRIw6gBpv2KfSjzkNWEeCwIW2KoKIZHrI8DntjqdEkA3df3bY5YQSB','sunny',TO_DATE('20221015 071210','yyyy-mm-dd hh24:mi:ss'),0.2,'낙찰');

INSERT INTO 경매_참여하다 VALUES('lcQhN5jm4WhHkQGJ500w3sGAexElRIaJ1a4Hf6MetEZ9FZTESu0BBAizWKAKMQOJlqnQitguxoOd2b','song',TO_DATE('20221101 061210','yyyy-mm-dd hh24:mi:ss'),0.18,'낙찰');

INSERT INTO 경매_참여하다 VALUES('Hlum9msMrquR2aNWfdQ9uh1amVYHDjqRa4zQ6pbgA2xGEYQx4CloSwSXH4r6HKEHvM3DiNIrQBsxFS','song',TO_DATE('20221219 061210','yyyy-mm-dd hh24:mi:ss'),0.4,'낙찰');
INSERT INTO 경매_참여하다 VALUES('Hlum9msMrquR2aNWfdQ9uh1amVYHDjqRa4zQ6pbgA2xGEYQx4CloSwSXH4r6HKEHvM3DiNIrQBsxFS','lmayr',TO_DATE('20221219 051210','yyyy-mm-dd hh24:mi:ss'),0.1,'미낙찰');

INSERT INTO 경매_참여하다 VALUES('W9SGkwHdZqeyMuepusteKxkcBGy0lMZJtckzvBzgAnHiIkFZldQyMrWj9pE32P4w0OOGKqPlGzSExm','random',TO_DATE('20230104 041210','yyyy-mm-dd hh24:mi:ss'),0.12,'낙찰');

INSERT INTO 경매_참여하다 VALUES('t6jdVb715n0bGXSKxvogwpE5QZ1Hq17AFMyPgpXmVhJyqIclmL2oW7KKuKb6UAtVm35jAzJwdE6mBl','random',TO_DATE('20230207 031510','yyyy-mm-dd hh24:mi:ss'),0.29,'낙찰');
INSERT INTO 경매_참여하다 VALUES('t6jdVb715n0bGXSKxvogwpE5QZ1Hq17AFMyPgpXmVhJyqIclmL2oW7KKuKb6UAtVm35jAzJwdE6mBl','normal',TO_DATE('20230207 031210','yyyy-mm-dd hh24:mi:ss'),0.23,'미낙찰');

COMMIT;

rem 월드컵_후보에_속하다 테이블 생성

CREATE TABLE 월드컵_후보에_속하다(
    월드컵번호 INT,
    후보번호 INT,
    일대일승리횟수 INT DEFAULT 0,
    일대일대결횟수 INT DEFAULT 0,
    CONSTRAINT 월드컵후보에속하다_PK PRIMARY KEY (월드컵번호, 후보번호),
    CONSTRAINT 후보속하다_월드컵번호_FK FOREIGN KEY (월드컵번호) REFERENCES 영화_월드컵(월드컵번호) ON DELETE CASCADE,
    CONSTRAINT 후보속하다_후보번호_FK FOREIGN KEY (후보번호) REFERENCES 월드컵_후보(후보번호) ON DELETE CASCADE
);

INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호, 일대일승리횟수, 일대일대결횟수) VALUES (1, 1, 2, 5);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호, 일대일승리횟수, 일대일대결횟수) VALUES (1, 2, 2, 4);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호, 일대일승리횟수, 일대일대결횟수) VALUES (1, 3, 6, 8);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호, 일대일승리횟수, 일대일대결횟수) VALUES (1, 4, 2, 4);

INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (2,5);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (2,6);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (2,7);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (2,8);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (2,9);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (2,10);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (2,11);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (2,12);

INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (7,13);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (7,14);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (7,15);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (7,16);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (7,17);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (7,18);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (7,19);
INSERT INTO 월드컵_후보에_속하다(월드컵번호,후보번호) VALUES (7,20);

COMMIT;

rem 월드컵_영화_관련되다 테이블 생성

CREATE TABLE 월드컵_영화_관련되다(
    월드컵번호 INT,
    영화번호 INT,
    CONSTRAINT 월드컵_영화_관련되다_PK PRIMARY KEY (월드컵번호, 영화번호),
    CONSTRAINT 영화관련_월드컵번호_FK FOREIGN KEY (월드컵번호) REFERENCES 영화_월드컵(월드컵번호) ON DELETE CASCADE,
    CONSTRAINT 영화관련_영화번호_FK FOREIGN KEY (영화번호) REFERENCES 영화(영화번호) ON DELETE CASCADE
);

INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (1,2);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (2,3);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (1,5);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (1,6);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (3,2);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (3,4);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (3,5);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (3,6);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (9,7);
INSERT INTO 월드컵_영화_관련되다(월드컵번호,영화번호) VALUES (9,9);
COMMIT;

rem 월드컵_영화인_관련되다 테이블 생성

CREATE TABLE 월드컵_영화인_관련되다(
    월드컵번호 INT,
    영화인_id INT,
    CONSTRAINT 월드컵영화인관련되다_PK PRIMARY KEY (월드컵번호, 영화인_id),
    CONSTRAINT 영화인관련_월드컵번호_FK FOREIGN KEY (월드컵번호) REFERENCES 영화_월드컵(월드컵번호) ON DELETE CASCADE,
    CONSTRAINT 영화인관련_영화인id_FK FOREIGN KEY (영화인_id) REFERENCES 영화인(영화인_id) ON DELETE CASCADE
);

INSERT INTO 월드컵_영화인_관련되다(월드컵번호,영화인_ID) VALUES (2,2);
INSERT INTO 월드컵_영화인_관련되다(월드컵번호,영화인_ID) VALUES (3,1);
INSERT INTO 월드컵_영화인_관련되다(월드컵번호,영화인_ID) VALUES (3,6);
INSERT INTO 월드컵_영화인_관련되다(월드컵번호,영화인_ID) VALUES (3,7);
INSERT INTO 월드컵_영화인_관련되다(월드컵번호,영화인_ID) VALUES (3,8);
INSERT INTO 월드컵_영화인_관련되다(월드컵번호,영화인_ID) VALUES (3,9);
INSERT INTO 월드컵_영화인_관련되다(월드컵번호,영화인_ID) VALUES (4,6);
INSERT INTO 월드컵_영화인_관련되다(월드컵번호,영화인_ID) VALUES (8,1);

COMMIT;

rem 월드컵_참여하다 테이블 생성

CREATE TABLE 월드컵_참여하다(
    월드컵번호 INT,
    회원ID  VARCHAR2(20),
    종료일시 DATE,
    우승후보이름 VARCHAR2(50),
    CONSTRAINT 월드컵참여하다_PK PRIMARY KEY (월드컵번호, 회원ID, 종료일시),
    CONSTRAINT 월드컵참여_월드컵번호_FK FOREIGN KEY (월드컵번호) REFERENCES 영화_월드컵(월드컵번호) ON DELETE CASCADE,
    CONSTRAINT 월드컵참여_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE
);

INSERT INTO 월드컵_참여하다(월드컵번호,회원ID,종료일시,우승후보이름) VALUES (1,'user1',TO_DATE('20220710 130432' , 'yyyy-mm-dd hh24:mi:ss'), '벽을 타는 스파이더맨');
INSERT INTO 월드컵_참여하다(월드컵번호,회원ID,종료일시,우승후보이름) VALUES (1,'snowman',TO_DATE('20220501 112351' , 'yyyy-mm-dd hh24:mi:ss'), '베놈과 싸우는 스파이더맨');
INSERT INTO 월드컵_참여하다(월드컵번호,회원ID,종료일시,우승후보이름) VALUES (1,'lmayr',TO_DATE('20220219 183101' , 'yyyy-mm-dd hh24:mi:ss'), '베놈과 싸우는 스파이더맨');
INSERT INTO 월드컵_참여하다(월드컵번호,회원ID,종료일시,우승후보이름) VALUES (1,'coin',TO_DATE('20220829 142056' , 'yyyy-mm-dd hh24:mi:ss'), '친구들을 구해주는 스파이더맨');
INSERT INTO 월드컵_참여하다(월드컵번호,회원ID,종료일시,우승후보이름) VALUES (2,'user1',TO_DATE('20220710 131205' , 'yyyy-mm-dd hh24:mi:ss'), 'Planetarium');
INSERT INTO 월드컵_참여하다(월드컵번호,회원ID,종료일시,우승후보이름) VALUES (2,'sunny',TO_DATE('20220630 130849' , 'yyyy-mm-dd hh24:mi:ss'), 'City of Stars');

COMMIT;

rem 굿즈_거래요청하다 테이블 생성

CREATE TABLE 굿즈_거래요청하다(
    회원ID VARCHAR2(20),
    게시글번호 INT,
    요청일시 DATE,
    수락여부 CHAR(9) DEFAULT '미응답',
    CONSTRAINT 굿즈거래요청하다_PK PRIMARY KEY (회원ID, 게시글번호, 요청일시) ,
    CONSTRAINT 거래요청_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
    CONSTRAINT 거래요청_게시글번호_FK FOREIGN KEY (게시글번호) REFERENCES 굿즈_판매게시글(판매게시글_번호) ON DELETE CASCADE
);

INSERT INTO 굿즈_거래요청하다(회원ID, 게시글번호, 요청일시) VALUES('user1',2, TO_DATE('20220705 140230' , 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_거래요청하다(회원ID, 게시글번호, 요청일시) VALUES('random',1,TO_DATE('20220911 150327' , 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_거래요청하다(회원ID, 게시글번호, 요청일시) VALUES('sunny',3, TO_DATE('20220519 130501' , 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_거래요청하다(회원ID, 게시글번호, 요청일시) VALUES('song',6, TO_DATE('20220713 140500' , 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_거래요청하다(회원ID, 게시글번호, 요청일시) VALUES('snowman',7, TO_DATE('20220612 150304' , 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_거래요청하다(회원ID, 게시글번호, 요청일시) VALUES('snowman',4, TO_DATE('20221013 151204' , 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_거래요청하다(회원ID, 게시글번호, 요청일시) VALUES('lucky',5, TO_DATE('20230301 111234' , 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO 굿즈_거래요청하다(회원ID, 게시글번호, 요청일시) VALUES('lmayr',8, TO_DATE('20220912 151034' , 'yyyy-mm-dd hh24:mi:ss'));

COMMIT;    

rem 굿즈_판매게시글_평점남기다 테이블 생성

CREATE TABLE 굿즈_판매게시글_평점남기다(
    회원ID  VARCHAR2(20) ,
    게시글번호 INT,
    평가점수 INT CHECK(평가점수 BETWEEN -2 AND 2),
    CONSTRAINT 굿판평_PK PRIMARY KEY (회원ID, 게시글번호),
    CONSTRAINT 굿판평_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID) ON DELETE CASCADE,
    CONSTRAINT 굿판평_게시글번호_FK FOREIGN KEY (게시글번호) REFERENCES 굿즈_판매게시글(판매게시글_번호) ON DELETE CASCADE
);

INSERT INTO 굿즈_판매게시글_평점남기다 VALUES('song',1,1);
INSERT INTO 굿즈_판매게시글_평점남기다 VALUES('user1',2,2);
INSERT INTO 굿즈_판매게시글_평점남기다 VALUES('snowman',3,0);
INSERT INTO 굿즈_판매게시글_평점남기다 VALUES('sunny',4,0);
INSERT INTO 굿즈_판매게시글_평점남기다 VALUES('coin',5,-1);
INSERT INTO 굿즈_판매게시글_평점남기다 VALUES('normal',6,1);
INSERT INTO 굿즈_판매게시글_평점남기다 VALUES('lmayr',7,2);
INSERT INTO 굿즈_판매게시글_평점남기다 VALUES('random',8,-2);

COMMIT;

CREATE INDEX 영화평점_idx ON 감상평_작성하다(영화평점);
CREATE INDEX 굿즈평점_idx ON 굿즈_후기(굿즈평점);
CREATE INDEX 제작국가_idx ON 영화(제작국가);

COMMIT;