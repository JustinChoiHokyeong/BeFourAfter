-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE users(
	id VARCHAR2(100) PRIMARY KEY,
	name VARCHAR2(30) NOT NULL,
	email VARCHAR2(100),
	pwd VARCHAR2(100) NOT NULL,
	profile VARCHAR2(100), -- 프로필 이미지 경로를 저장할 칼럼
	phone VARCHAR2(50) NOT NULL
	postcode VARCHAR2(50),
	addr VARCHAR2(1000),
	detailAddr VARCHAR2(1000),
	regdate DATE -- 가입일
	
);
CREATE SEQUENCE users_seq; 

-- 예약 정보 테이블
CREATE TABLE reserve(
	num NUMBER PRIMARY KEY, --예약번호인데 클라이언트한테 안보임 (시퀀스)
	name VARCHAR2(50) NOT NULL, --회원정보
	phone VARCHAR2(50) NOT NULL,
	rname VARCHAR2(50) NOT NULL, --예약자 정보
	rphone VARCHAR2(50) NOT NULL,
	rdate DATE NOT NULL, --예약날짜
	place VARCHAR2(100) NOT NULL, --수령장소
	reservetype VARCHAR2(50) NOT NULL, --예약방식(출&입국)
	basicCnt NUMBER NOT NULL,
	bigCnt NUMBER NOT NULL,
	extraCnt NUMBER NOT NULL,
	totalPrice NUMBER NOT NULL
);
-- 예약 순서를 얻어낼 시퀀스 
CREATE SEQUENCE reserve_num_seq; 


-- 리뷰 게시판 테이블
CREATE TABLE board_review(
	num NUMBER PRIMARY KEY, --글번호
	writer VARCHAR2(100) NOT NULL, --글쓴이
	title VARCHAR2(300) NOT NULL, --제목
	imagePath VARCHAR2(100), -- 업로드된 이미지의 경로
	regdate DATE, -- 이미지 업로드 날짜 
	viewcount NUMBER NOT NULL, -- 조회수
	rating VARCHAR2(50) NOT NULL, -- 평점 (1,2,3,4,5 중 택)
	reservetype VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE board_review_seq; 



-- cs 게시판 테이블
CREATE TABLE board_cs(
	num NUMBER PRIMARY KEY, --글번호
	writer VARCHAR2(100) NOT NULL,
	title VARCHAR2(100) NOT NULL,
	content CLOB NOT NULL,
	viewcount NUMBER, --조회수
	regdate DATE NOT NULL,
	isSecret VARCHAR2(10),
	reserveType VARCHAR2(50)
);

CREATE SEQUENCE board_cs_seq; 


--cs 게시판의 댓글 테이블
CREATE TABLE comment_cs(
	num NUMBER PRIMARY KEY, --댓글의 글번호
	writer VARCHAR2(100) NOT NULL, --댓글 작성자의 아이디
	content CLOB NOT NULL, --댓글 내용
	target_id VARCHAR2(100), --댓글의 대상자 아이디
	ref_group NUMBER, --원글의 글번호
	comment_group NUMBER, --원글의 댓글의 번호
	deleted CHAR(3) DEFAULT 'no',
	regdate DATE NOT NULL
);

CREATE SEQUENCE board_comment_cs_seq;


-- sample 데이터
INSERT INTO (id, name, pwd, phone)
VALUES('abc123', 'hao', 'asd098', '01011112222');

INSERT INTO (id, name, pwd, phone)
VALUES('aa111', 'hogyeong', 'bb222', '01033334444');

INSERT INTO (id, name, pwd, phone)
VALUES('lululu', 'hyeono', 'zard00', '01055556666');











