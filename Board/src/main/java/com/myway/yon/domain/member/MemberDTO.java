package com.myway.yon.domain.member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDTO {
	
	private int b_id;
	private String b_title;
	private String b_content;
	private String u_regname;
	private String u_modifyname;

}