package com.myway.yon;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller  //Web MVC 코드에 사용되는 어노테이션 
@RequestMapping(value = "/member")
@Slf4j
public class MemberController {
	
	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String table(Model model) {

		return "member/join";
	}
	
}