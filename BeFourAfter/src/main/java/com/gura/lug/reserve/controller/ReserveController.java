package com.gura.lug.reserve.controller;

import java.util.List;

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
	
	@RequestMapping("/reserve/main.do")
	public String main() {
		return "reserve/main";
	}
	
	@RequestMapping("/reserve/list.do")
	public ModelAndView authgetList(HttpServletRequest request, ReserveDto dto,ModelAndView mView) {
		
		mView.setViewName("reserve/list");
		String id=(String)request.getSession().getAttribute("id");
		mView.addObject("id", id);
		dto.setId(id);
		service.getList(request, dto);
		return mView;
	}
	
	@RequestMapping("/reserve/list2.do")
	public ModelAndView authgetList2(HttpServletRequest request, ReserveDto dto,ModelAndView mView) {
		
		mView.setViewName("reserve/list2");
		String id=(String)request.getSession().getAttribute("id");
		mView.addObject("id", id);
		dto.setId(id);
		service.getList2(request, dto);
		return mView;
	}
	
	@RequestMapping("/reserve/leave_insertform.do")
	public ModelAndView authleaveinsertform(ModelAndView mView, HttpServletRequest request) {
		mView.setViewName("reserve/leave_insertform");
		String id=(String)request.getSession().getAttribute("id");
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
		service.getData(id, request);
		return mView;
	}
	
	@RequestMapping("/reserve/updateform.do")
	public ModelAndView updateform(ModelAndView mView,HttpServletRequest request) {
		mView.setViewName("reserve/updateform");
		int num=Integer.parseInt(request.getParameter("num"));
		service.updateData(num, mView);
		return mView;
	}
	
	@RequestMapping("/reserve/ent_insert.do")
	public String entinsert(ReserveDto dto, HttpServletRequest request) {
		
		service.insert2(dto, request);
		return "redirect:/reserve/list2.do";
	}
	@RequestMapping("/reserve/delete.do")
	public String delete(int num, HttpServletRequest request) {
		service.delete(num, request);
		
		return "redirect:/reserve/list.do";
	}
	@RequestMapping("/reserve/delete2.do")
	public String delete2(int num, HttpServletRequest request) {
		service.delete2(num, request);
		
		return "redirect:/reserve/list2.do";
	}
	
	
	
	@RequestMapping("/reserve/update.do")
	public String update(ReserveDto dto, HttpServletRequest request) {
		service.update(dto, request);
		
		return "redirect:/reserve/list.do";
	}
	
	@RequestMapping("/reserve/update2.do")
	public String update2(ReserveDto dto, HttpServletRequest request) {
		service.update2(dto, request);
		
		return "redirect:/reserve/list2.do";
	}
}
