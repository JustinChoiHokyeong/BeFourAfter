package com.gura.lug.reserve.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gura.lug.reserve.dto.ReserveDto;
import com.gura.lug.reserve.service.ReserveService;

@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService service;
	
	@RequestMapping("/reserve/list.do")
	public String getList(HttpServletRequest request, ReserveDto dto) {
		
		service.getList(request, dto);
		
		return "reserve/list";
	}
	
	@RequestMapping("/reserve/leave_insertform.do")
	public String leaveinsertform() {
		
		
		return "reserve/leave_insertform";
	}
	
	@RequestMapping("/reserve/leave_insert.do")
	public String leaveinsert(ReserveDto dto, HttpServletRequest request) {
		service.insert(dto, request);
		
		return "redirect:/reserve/list.do";
	}
	
	@RequestMapping("/reserve/ent_insertform.do")
	public String entinsertform() {
		
		return "reserve/ent_insertform";
	}
	
	@RequestMapping("/reserve/ent_insert.do")
	public String entinsert(ReserveDto dto, HttpServletRequest request) {
		
		service.insert2(dto, request);
		return "redirect:/reserve/list.do";
	}
	@RequestMapping("/reserve/delete.do")
	public String delete(int num, HttpServletRequest request) {
		service.delete(num, request);
		
		return "redirect:/reserve/list.do";
	}
	
	@RequestMapping("/reserve/updateform.do")
	public String updateform(HttpServletRequest request) {
		service.getData(request);
		
		return "reserve/updateform";
	}
	
	@RequestMapping("/reserve/update.do")
	public String update(ReserveDto dto, HttpServletRequest request) {
		service.update(dto, request);
		
		return "redirect:/reserve/list.do";
	}
	
	@RequestMapping("/reserve/update2.do")
	public String update2(ReserveDto dto, HttpServletRequest request) {
		service.update2(dto, request);
		
		return "redirect:/reserve/list.do";
	}
}
