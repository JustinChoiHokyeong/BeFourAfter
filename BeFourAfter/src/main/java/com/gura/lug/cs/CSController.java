package com.gura.lug.cs;



import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class CSController {

	
	@RequestMapping("/cs/list.do")
	public String CS(HttpServletRequest request) {
		return "cs/list";
	}
	
	@RequestMapping("/cs/ask.do")
	public String ask(HttpServletRequest request) {
		return "cs/ask";
	}
}
