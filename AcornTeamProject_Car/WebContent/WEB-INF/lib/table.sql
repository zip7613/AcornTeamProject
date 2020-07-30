CREATE TABLE benz_member(
   num NUMBER PRIMARY KEY,
   id VARCHAR2(100) NOT NULL,
   pwd VARCHAR2(100) NOT NULL,
   country VARCHAR2(100) NOT NULL,
   email VARCHAR2(100)
);


CREATE SEQUENCE benz_seq;

CREATE TABLE board_file(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(100) NOT NULL, 
	title VARCHAR2(100) NOT NULL,
	orgFileName VARCHAR2(100) NOT NULL, -- 원본 파일명
	saveFileName VARCHAR2(100) NOT NULL, -- 서버에 실제로 저장된 파일명
	fileSize NUMBER NOT NULL,
	regdate DATE
);

CREATE SEQUENCE board_file_seq;