package com.myway.yon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

	@GetMapping(value="/Home")
	@ResponseBody
	public String home() {
		return "OK";
	}
	
}
