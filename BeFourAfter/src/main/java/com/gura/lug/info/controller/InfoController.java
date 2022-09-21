package com.gura.lug.info.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
		
		@RequestMapping("/info/info")
		public String list(HttpServletRequest request) {
		
			return "info/info";
		}
}
