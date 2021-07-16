package com.myway.yon.domain.user;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDTO {
	
	private int u_seq;
	private String u_id;
	private String u_nickname;
	private String u_pw;
	private String u_email;
	private String u_name;
	private char u_genderMF;
	private String u_birth;
	private String u_call;
	private Timestamp u_regdate;
	private Timestamp u_modifydate;

}