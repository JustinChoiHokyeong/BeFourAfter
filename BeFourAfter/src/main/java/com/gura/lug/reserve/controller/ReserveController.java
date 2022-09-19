package com.gura.lug.reserve.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gura.lug.reserve.dto.ReserveDto;
import com.gura.lug.reserve.service.ReserveService;

@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService service;
	
	@RequestMapping("/reserve/list.do")
	public ModelAndView authgetList(HttpServletRequest request, ReserveDto dto,ModelAndView mView) {
		
		
		mView.setViewName("reserve/list");
		String id=(String)request.getSession().getAttribute("id");
		mView.addObject("id", id);
		service.getList(request, dto);
		System.out.println(id);
		return mView;
	}
	
	@RequestMapping("/reserve/leave_insertform.do")
	public ModelAndView authleaveinsertform(ModelAndView mView, HttpServletRequest request) {
		mView.setViewName("reserve/leave_insertform");
		String id=(String)request.getSession().getAttribute("id");
		mView.addObject("id", id);
		service.getData(id, request);
		return mView;
	}
	
	@RequestMapping("/reserve/leave_insert.do")
	public String leaveinsert(ReserveDto dto, HttpServletRequest request) {
		service.insert(dto, request);
		
		return "redirect:/reserve/list.do";
	}
	
	@RequestMapping("/reserve/ent_insertform.do")
	public ModelAndView authentinsertform(ModelAndView mView, HttpServletRequest request) {
		mView.setViewName("reserve/ent_insertform");
		String id=(String)request.getSession().getAttribute("id");
		mView.addObject("id", id);
		service.getData(id, request);
		return mView;
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
	public String updateform(HttpServletRequest request, HttpSession session) {
		String id=(String)session.getAttribute("id");
		service.getData(id, request);
		
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
