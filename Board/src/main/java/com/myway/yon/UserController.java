package com.myway.yon;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myway.yon.domain.user.UserDTO;
import com.myway.yon.service.BoardService;
import com.myway.yon.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Controller  //Web MVC 코드에 사용되는 어노테이션 
@RequestMapping(value = "/user")
@Slf4j
public class UserController {
	
	private UserService userService;
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) {

		return "user/join";
	}
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "user/login";
	}
	
	// 로그인 Ok
	@PostMapping(value = "/loginOk")
	public String loginOk(UserDTO dto ,Model model) {
		model.addAttribute("result", userService.login(dto));
		//로그인 성공시 1, 실패시 0 을 반환한다
		return "user/loginOk";
	}
		
	// 회원가입
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model) {

		return "user/logout";
	}
	
}