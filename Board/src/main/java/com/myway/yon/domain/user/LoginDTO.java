package com.myway.yon.domain.user;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginDTO {
	
	private int u_seq;
	private String u_id;
	private String u_pw;
	private boolean useCookie;

}