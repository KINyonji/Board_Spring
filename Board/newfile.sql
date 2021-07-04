
/* Drop Triggers */

DROP TRIGGER TRI_Board_b_id;



/* Drop Tables */

DROP TABLE Board CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_Board_b_id;




/* Create Sequences */

CREATE SEQUENCE SEQ_Board_b_id INCREMENT BY 1 START WITH 1;



/* Create Tables */

-- 게시판
CREATE TABLE Board
(
	-- b_id
	b_id number NOT NULL,
	-- b_title
	b_title varchar2(50) NOT NULL,
	-- b_content
	b_content clob NOT NULL,
	-- u_regname
	u_regname varchar2(30) NOT NULL,
	-- u_modifyname
	u_modifyname varchar2(30),
	-- b_regdate
	b_regdate date NOT NULL,
	-- b_modifydate
	b_modifydate date,
	-- b_viewcnt
	b_viewcnt number DEFAULT 0 NOT NULL,
	-- b_delete_ny
	b_delete_ny char(1 char) DEFAULT 'N' NOT NULL,
	PRIMARY KEY (b_id)
);



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_Board_b_id BEFORE INSERT ON Board
FOR EACH ROW
BEGIN
	SELECT SEQ_Board_b_id.nextval
	INTO :new.b_id
	FROM dual;
END;

/




/* Comments */

COMMENT ON TABLE Board IS '게시판';
COMMENT ON COLUMN Board.b_id IS 'b_id';
COMMENT ON COLUMN Board.b_title IS 'b_title';
COMMENT ON COLUMN Board.b_content IS 'b_content';
COMMENT ON COLUMN Board.u_regname IS 'u_regname';
COMMENT ON COLUMN Board.u_modifyname IS 'u_modifyname';
COMMENT ON COLUMN Board.b_regdate IS 'b_regdate';
COMMENT ON COLUMN Board.b_modifydate IS 'b_modifydate';
COMMENT ON COLUMN Board.b_viewcnt IS 'b_viewcnt';
COMMENT ON COLUMN Board.b_delete_ny IS 'b_delete_ny';



