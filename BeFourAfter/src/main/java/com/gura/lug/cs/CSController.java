package com.gura.lug.cs;



import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//패키지 이름 cs.controller라고 수정어떨까요

@Controller
public class CSController {

	
	@RequestMapping("/cs/list.do")
	public String CS(HttpServletRequest request) {
		return "cs/list";
	}
	
	//질문게시판 응답
	@RequestMapping("/cs/ask.do")
	public String ask(HttpServletRequest request) {
		return "cs/ask";
	}
	
	//게시글 자세히 보기 응답
	@RequestMapping("/cs/detail")
	public String detail() {
		return "cs/detail";
	}
	
	//질문등록 폼 응답
	@RequestMapping("/cs/updateform")
	public String updateform() {
		return "cs/updateform";
	}
	
	//질문등록 결과여부 응답
	@RequestMapping("/cs/update")
	public String update() {
		return "cs/update";
	}
	
	//질문 삭제 응답
	@RequestMapping("/cs/delete")
	public String delete() {
		return "cs/delete";
	}
	
	//질문등록폼 응답
	@RequestMapping("/cs/insertform")
	public String insertform() {
		return "cs/insertform";
	}
	
	//질문등록결과 응답
	@RequestMapping("/cs/insert")
	public String insert() {
		return "cs/insert";
	}
}
