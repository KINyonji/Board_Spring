package com.myway.yon.domain.board;

import java.sql.Timestamp;

import com.myway.yon.domain.user.UserDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDTO {
	
	private int b_id;
	private String b_title;
	private String b_content;
	private String u_regID; //수정
	private String u_modifyID; //수정
	private Timestamp b_regdate;
	private Timestamp b_modifydate;
	private int b_viewcnt;
	private char b_deleteYN;
	
	private int RNUM;
	private String u_name;

}