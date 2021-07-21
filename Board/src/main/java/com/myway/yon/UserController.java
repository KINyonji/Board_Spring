package com.myway.yon;


import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myway.yon.domain.board.BoardDTO;
import com.myway.yon.domain.user.UserDTO;
import com.myway.yon.service.BoardService;
import com.myway.yon.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Controller  //Web MVC 코드에 사용되는 어노테이션 
@RequestMapping(value = "/user")
@Slf4j
public class UserController {
	
	private UserService userService;
	private BoardService boardService;

	@Autowired
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	// 회원가입 화면
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) {
		return "user/join";
	}
	
	//회원가입 OK
	@PostMapping(value = "/joinOk")
	public String joinOk(UserDTO dto ,Model model) {
		model.addAttribute("result", userService.join(dto));
		//회원가입 성공시 1, 실패시 0 을 반환한다
		return "user/joinOk";
	}
	
	// 아이디 중복체크
	@PostMapping(value = "/idCheck")
	@ResponseBody
	public String IdCheck(@RequestParam("u_id") String u_id ,Model model) {
		return String.format("%d", userService.idCheck(u_id));
	}
	
	// 닉네임 중복체크
	@PostMapping(value = "/nnCheck")
	@ResponseBody
	public String NNCheck(@RequestParam("u_nickname") String u_nickname ,Model model) {
		return String.format("%d", userService.nicknameCheck(u_nickname));
	}
	
	
	// 로그인 화면
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "user/login";
	}
	
	// 로그인 Ok + 세션
	@PostMapping(value = "/loginOk")
	public String loginOk(UserDTO dto ,Model model, HttpSession session) {
	  if(userService.login(dto) == 1){ //로그인 성공시 1, 실패시 0 을 반환한다
		  	//세션에 키,값 넣기
            session.setAttribute("loginCheck",true);         
            session.setAttribute("id",dto.getU_id());
            model.addAttribute("result", 1);          
            
            //해쉬맵으로 seq와 nickname값을 가져와 세션에 넣어줌
            HashMap<String, Object> map =  userService.sessionVal(dto);
           
            session.setAttribute("seq",Integer.parseInt(String.valueOf( map.get("U_SEQ"))));
		
            return "user/loginOk";
        }else{
        	model.addAttribute("result", 0);  
            return "user/loginOk";
        }
	}
		
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
        //세션 초기화
        session.invalidate();
		return "index";
	}
	
	
	//내 정보 수정 화면
	@GetMapping(value = "/userUpdate1")
	public String pwchk(HttpSession session, Model model) {
		
		model.addAttribute("list", userService.selectByUid((Integer)session.getAttribute("seq")));  
		System.out.println("list: "+userService.selectByUid((Integer)session.getAttribute("seq")));
		System.out.println("loginCheck: "+session.getAttribute("loginCheck"));
		return "user/userUpdate1";
	}
	
	//내 정보 수정
	@RequestMapping(value = "/userUpdateOk", method = RequestMethod.POST)
	public String userUpdate( UserDTO dto ,Model model) {
		//내 정보 수정 성공시 1, 실패시 0 을 반환한다
		model.addAttribute("result", userService.userUpdate(dto));
		return "user/userUpdateOk";
	}
	
	
	//회원 탈퇴하기
	@PostMapping(value = "/delete")
	@ResponseBody
	public String userDelete( @RequestParam("u_seq")String u_seq , Model model,HttpSession session) {
		userService.deleteByUseq(u_seq); 
		boardService.deleteBoard(u_seq);
		session.invalidate();
        return "index";
	}

}