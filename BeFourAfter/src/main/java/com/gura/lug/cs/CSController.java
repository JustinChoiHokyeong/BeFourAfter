package com.gura.lug.cs;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CSController {
	@RequestMapping("/cs/list")
	public String CS(HttpServletRequest request) {
		return "cs/list";
	}
}
