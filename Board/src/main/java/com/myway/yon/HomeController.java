package com.myway.yon;

import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myway.yon.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private UserService userService;
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(HttpSession session, Model model) {
		
		if(session.getAttribute("loginCheck") != null) {
		 int seq = (Integer)session.getAttribute("seq");
		 
		 model.addAttribute("nickname", userService.selectNN(seq));
		}
		
		return "index";
	}

}
