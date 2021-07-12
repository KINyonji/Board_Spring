package com.myway.yon.domain;

import java.sql.Timestamp;
import java.util.List;

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
	private String u_regname;
	private String u_modifyname;
	private Timestamp b_regdate;
	private Timestamp b_modifydate;
	private int b_viewcnt;
	private char b_delete_ny;

}