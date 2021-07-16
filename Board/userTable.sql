
/* Drop Triggers */

DROP TRIGGER TRI_Board_b_id;
DROP TRIGGER TRI_UserTable_u_seq;
DROP TRIGGER TRI_User_u_seq;



/* Drop Tables */

DROP TABLE File CASCADE CONSTRAINTS;
DROP TABLE Reply CASCADE CONSTRAINTS;
DROP TABLE Board CASCADE CONSTRAINTS;
DROP TABLE UserTable CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_Board_b_id;
DROP SEQUENCE SEQ_UserTable_u_seq;
DROP SEQUENCE SEQ_User_u_seq;




/* Create Sequences */

CREATE SEQUENCE SEQ_Board_b_id INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_UserTable_u_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_User_u_seq INCREMENT BY 1 START WITH 1;



/* Create Tables */

-- 게시판
CREATE TABLE Board
(
	-- 게시물 id
	b_id number NOT NULL UNIQUE,
	-- 게시물 등록자
	u_regID number NOT NULL,
	-- 게시물 수정자
	u_modifyID number,
	-- 게시물 제목
	b_title varchar2(50) NOT NULL,
	-- 게시물 내용
	b_content clob NOT NULL,
	-- 게시물 등록일
	b_regdate timestamp NOT NULL,
	-- 게시물 수정일
	b_modifydate timestamp,
	-- 조회수
	b_viewcnt number DEFAULT 0 NOT NULL,
	-- 게시물 삭제여부
	b_deleteYN char(1 char) DEFAULT 'N' NOT NULL,
	PRIMARY KEY (b_id)
);


-- 첨부파일
CREATE TABLE File
(
	-- 파일 id
	f_id number NOT NULL UNIQUE,
	-- 게시물 id
	b_id number NOT NULL,
	-- 파일 이름
	f_name varchar2(200) NOT NULL,
	-- 파일 등록일
	f_regdate timestamp NOT NULL,
	-- 파일 수정일
	f_modifydate timestamp,
	-- 파일 삭제여부
	f_deleteYN char(1) DEFAULT 'Y' NOT NULL,
	-- 파일저장위치
	f_store varchar2(500) NOT NULL,
	PRIMARY KEY (f_id)
);


-- 댓글 테이블
CREATE TABLE Reply
(
	-- 댓글 id
	r_id number NOT NULL,
	-- 댓글 작성자
	u_seq number NOT NULL UNIQUE,
	-- 게시글 id
	b_id number NOT NULL,
	-- 댓글 내용
	r_content varchar2(500 char) NOT NULL,
	-- 댓글 날짜
	r_regdate timestamp NOT NULL DEFAULT SYSDATE,
	-- 댓글 수정날짜
	r_modifydate timestamp,
	-- 댓글 삭제여부
	r_deleteYN char(1) DEFAULT 'N' NOT NULL,
	PRIMARY KEY (r_id)
);


-- 회원 테이블
CREATE TABLE UserTable
(
	-- 회원 시퀀스
	u_seq number NOT NULL UNIQUE,
	-- 회원 id
	u_id varchar2(40) NOT NULL UNIQUE,
	-- 회원 닉네임
	u_nickname varchar2(50 char) NOT NULL UNIQUE,
	-- 회원 비밀번호
	u_pw varchar2(100 char) NOT NULL UNIQUE,
	-- 회원 이메일
	u_email varchar2(50 char) NOT NULL UNIQUE,
	-- 회원 이름
	u_name varchar2(20 char) NOT NULL,
	-- 회원 성별
	u_genderMF char(1 char) NOT NULL,
	-- 회원의 생년월일
	u_birth varchar2(40 char) NOT NULL,
	-- 회원 연락처
	u_call nvarchar2(15) NOT NULL UNIQUE,
	-- 회원 생성일
	u_regdate timestamp,
	-- 회원 수정일
	u_modifydate timestamp,
	PRIMARY KEY (u_seq)
);



/* Create Foreign Keys */

ALTER TABLE File
	ADD FOREIGN KEY (b_id)
	REFERENCES Board (b_id)
;


ALTER TABLE Reply
	ADD FOREIGN KEY (b_id)
	REFERENCES Board (b_id)
;


ALTER TABLE Reply
	ADD FOREIGN KEY (u_seq)
	REFERENCES UserTable (u_seq)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_Board_b_id BEFORE INSERT ON Board
FOR EACH ROW
BEGIN
	SELECT SEQ_Board_b_id.nextval
	INTO :new.b_id
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_UserTable_u_seq BEFORE INSERT ON UserTable
FOR EACH ROW
BEGIN
	SELECT SEQ_UserTable_u_seq.nextval
	INTO :new.u_seq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_User_u_seq BEFORE INSERT ON User
FOR EACH ROW
BEGIN
	SELECT SEQ_User_u_seq.nextval
	INTO :new.u_seq
	FROM dual;
END;

/




/* Comments */

COMMENT ON TABLE Board IS '게시판';
COMMENT ON COLUMN Board.b_id IS '게시물 id';
COMMENT ON COLUMN Board.u_regID IS '게시물 등록자';
COMMENT ON COLUMN Board.u_modifyID IS '게시물 수정자';
COMMENT ON COLUMN Board.b_title IS '게시물 제목';
COMMENT ON COLUMN Board.b_content IS '게시물 내용';
COMMENT ON COLUMN Board.b_regdate IS '게시물 등록일';
COMMENT ON COLUMN Board.b_modifydate IS '게시물 수정일';
COMMENT ON COLUMN Board.b_viewcnt IS '조회수';
COMMENT ON COLUMN Board.b_deleteYN IS '게시물 삭제여부';
COMMENT ON TABLE File IS '첨부파일';
COMMENT ON COLUMN File.f_id IS '파일 id';
COMMENT ON COLUMN File.b_id IS '게시물 id';
COMMENT ON COLUMN File.f_name IS '파일 이름';
COMMENT ON COLUMN File.f_regdate IS '파일 등록일';
COMMENT ON COLUMN File.f_modifydate IS '파일 수정일';
COMMENT ON COLUMN File.f_deleteYN IS '파일 삭제여부';
COMMENT ON COLUMN File.f_store IS '파일저장위치';
COMMENT ON TABLE Reply IS '댓글 테이블';
COMMENT ON COLUMN Reply.r_id IS '댓글 id';
COMMENT ON COLUMN Reply.u_seq IS '댓글 작성자';
COMMENT ON COLUMN Reply.b_id IS '게시글 id';
COMMENT ON COLUMN Reply.r_content IS '댓글 내용';
COMMENT ON COLUMN Reply.r_regdate IS '댓글 날짜';
COMMENT ON COLUMN Reply.r_modifydate IS '댓글 수정날짜';
COMMENT ON COLUMN Reply.r_deleteYN IS '댓글 삭제여부';
COMMENT ON TABLE UserTable IS '회원 테이블';
COMMENT ON COLUMN UserTable.u_seq IS '회원 시퀀스';
COMMENT ON COLUMN UserTable.u_id IS '회원 id';
COMMENT ON COLUMN UserTable.u_nickname IS '회원 닉네임';
COMMENT ON COLUMN UserTable.u_pw IS '회원 비밀번호';
COMMENT ON COLUMN UserTable.u_email IS '회원 이메일';
COMMENT ON COLUMN UserTable.u_name IS '회원 이름';
COMMENT ON COLUMN UserTable.u_genderMF IS '회원 성별';
COMMENT ON COLUMN UserTable.u_birth IS '회원의 생년월일';
COMMENT ON COLUMN UserTable.u_call IS '회원 연락처';
COMMENT ON COLUMN UserTable.u_regdate IS '회원 생성일';
COMMENT ON COLUMN UserTable.u_modifydate IS '회원 수정일';



