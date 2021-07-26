/* Create Tables */

-- 첨부파일
CREATE TABLE Files
(
	-- 파일 id
	f_id number NOT NULL ,
	-- 게시물 id
	b_id number NOT NULL,
	-- 파일 이름
	f_name varchar2(200) NOT NULL,
	-- 파일 등록일
	f_regdate timestamp NOT NULL,
	-- 파일 수정일
	f_modifydate timestamp,
	-- 파일 삭제여부
	f_deleteYN char(1) DEFAULT 'N' NOT NULL,
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
	u_seq number NOT NULL,
	-- 게시글 id
	b_id number NOT NULL,
	-- 댓글 내용
	r_content varchar2(500 char) NOT NULL,
	-- 댓글 날짜
	r_regdate timestamp NOT NULL,
	-- 댓글 수정날짜
	r_modifydate timestamp,
	-- 댓글 삭제여부
	r_deleteYN char(1) DEFAULT 'N' NOT NULL,
	PRIMARY KEY (r_id)
);


/* Comments */

COMMENT ON TABLE Files IS '첨부파일';
COMMENT ON COLUMN Files.f_id IS '파일 id';
COMMENT ON COLUMN Files.b_id IS '게시물 id';
COMMENT ON COLUMN Files.f_name IS '파일 이름';
COMMENT ON COLUMN Files.f_regdate IS '파일 등록일';
COMMENT ON COLUMN Files.f_modifydate IS '파일 수정일';
COMMENT ON COLUMN Files.f_deleteYN IS '파일 삭제여부';
COMMENT ON COLUMN Files.f_store IS '파일저장위치';
COMMENT ON TABLE Reply IS '댓글 테이블';
COMMENT ON COLUMN Reply.r_id IS '댓글 id';
COMMENT ON COLUMN Reply.u_seq IS '댓글 작성자';
COMMENT ON COLUMN Reply.b_id IS '게시글 id';
COMMENT ON COLUMN Reply.r_content IS '댓글 내용';
COMMENT ON COLUMN Reply.r_regdate IS '댓글 날짜';
COMMENT ON COLUMN Reply.r_modifydate IS '댓글 수정날짜';
COMMENT ON COLUMN Reply.r_deleteYN IS '댓글 삭제여부';




