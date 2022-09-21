package com.gura.lug.reserve.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.gura.lug.reserve.dto.ReserveDto;

public interface ReserveService {
	
	public void getList(HttpServletRequest request, ReserveDto dto);
	public void getList2(HttpServletRequest request, ReserveDto dto);
	public void insert(ReserveDto dto, HttpServletRequest reqeust);
	public void insert2(ReserveDto dto, HttpServletRequest reqeust);
	public void delete(int num, HttpServletRequest request);
	public void delete2(int num, HttpServletRequest request);
	public void update(ReserveDto dto, HttpServletRequest request);
	public void update2(ReserveDto dto, HttpServletRequest request);
	public void getData(String id, HttpServletRequest request);
	public void updateData(int num, ModelAndView mView);
}
