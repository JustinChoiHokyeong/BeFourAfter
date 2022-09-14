package com.gura.lug;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {
	
	@RequestMapping("/home.do")
	public String home(HttpServletRequest request) {
		
		return "home";
	}
	
}
