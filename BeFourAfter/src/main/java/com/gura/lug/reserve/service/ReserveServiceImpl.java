package com.gura.lug.reserve.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.servlet.ModelAndView;

import com.gura.lug.reserve.dao.ReserveDao;
import com.gura.lug.reserve.dto.ReserveDto;

@Service
public class ReserveServiceImpl implements ReserveService{
	
	@Autowired
	private ReserveDao dao;

	@Override
	public void getList(HttpServletRequest request, ReserveDto dto) {
				
				//한 페이지에 몇개씩 표시할 것인지
				final int PAGE_ROW_COUNT=5;
				//하단 페이지를 몇개씩 표시할 것인지
				final int PAGE_DISPLAY_COUNT=5;
				
				//보여줄 페이지의 번호를 일단 1이라고 초기값 지정
				int pageNum=1;
				//페이지 번호가 파라미터로 전달되는지 읽어와 본다.
				String strPageNum=request.getParameter("pageNum");
				//만일 페이지 번호가 파라미터로 넘어 온다면
				if(strPageNum != null){
					//숫자로 바꿔서 보여줄 페이지 번호로 지정한다.
					pageNum=Integer.parseInt(strPageNum);
				}
				
				//보여줄 페이지의 시작 ROWNUM
				int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
				//보여줄 페이지의 끝 ROWNUM
				int endRowNum=pageNum*PAGE_ROW_COUNT;
				
				//ReserveDto 객체에 startRowNum 과 endRowNum 을 담는다.
				dto.setStartRowNum(startRowNum);
				dto.setEndRowNum(endRowNum);
		
				//글 목록 얻어오기 
				List<ReserveDto> list=dao.getList(dto);
				//전체글의 갯수
				int totalRow=dao.getCount(dto);
				
				//하단 시작 페이지 번호 
				int startPageNum = 1 + ((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
				//하단 끝 페이지 번호
				int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
				

				//전체 페이지의 갯수
				int totalPageCount=(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
				//끝 페이지 번호가 전체 페이지 갯수보다 크다면 잘못된 값이다.
				if(endPageNum > totalPageCount){
					endPageNum=totalPageCount; //보정해 준다.
				}
				//view page 에서 필요한 값을 request 에 담아준다. 
				request.setAttribute("pageNum", pageNum);
				request.setAttribute("startPageNum", startPageNum);
				request.setAttribute("endPageNum", endPageNum);
				request.setAttribute("totalPageCount", totalPageCount);
				request.setAttribute("list", list);
				request.setAttribute("totalRow", totalRow);
	}
	
	@Override
	public void getList2(HttpServletRequest request, ReserveDto dto) {
				
				//한 페이지에 몇개씩 표시할 것인지
				final int PAGE_ROW_COUNT=5;
				//하단 페이지를 몇개씩 표시할 것인지
				final int PAGE_DISPLAY_COUNT=5;
				
				//보여줄 페이지의 번호를 일단 1이라고 초기값 지정
				int pageNum=1;
				//페이지 번호가 파라미터로 전달되는지 읽어와 본다.
				String strPageNum=request.getParameter("pageNum");
				//만일 페이지 번호가 파라미터로 넘어 온다면
				if(strPageNum != null){
					//숫자로 바꿔서 보여줄 페이지 번호로 지정한다.
					pageNum=Integer.parseInt(strPageNum);
				}
				
				//보여줄 페이지의 시작 ROWNUM
				int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
				//보여줄 페이지의 끝 ROWNUM
				int endRowNum=pageNum*PAGE_ROW_COUNT;
				
				//ReserveDto 객체에 startRowNum 과 endRowNum 을 담는다.
				dto.setStartRowNum(startRowNum);
				dto.setEndRowNum(endRowNum);
		
				//글 목록 얻어오기 
				List<ReserveDto> list=dao.getList2(dto);
				//전체글의 갯수
				int totalRow=dao.getCount2(dto);
				
				//하단 시작 페이지 번호 
				int startPageNum = 1 + ((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
				//하단 끝 페이지 번호
				int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
				

				//전체 페이지의 갯수
				int totalPageCount=(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
				//끝 페이지 번호가 전체 페이지 갯수보다 크다면 잘못된 값이다.
				if(endPageNum > totalPageCount){
					endPageNum=totalPageCount; //보정해 준다.
				}
				//view page 에서 필요한 값을 request 에 담아준다. 
				request.setAttribute("pageNum", pageNum);
				request.setAttribute("startPageNum", startPageNum);
				request.setAttribute("endPageNum", endPageNum);
				request.setAttribute("totalPageCount", totalPageCount);
				request.setAttribute("list", list);
				request.setAttribute("totalRow", totalRow);
	}

	@Override
	public void insert(ReserveDto dto, HttpServletRequest request) {
		String id=(String)request.getSession().getAttribute("id");
		String rsdate=(String)request.getParameter("rsdate");
		String reservetype=request.getParameter("leave_insertform");
		dto.setReservetype(reservetype);
		dao.insert(dto);
	}
	
	@Override
	public void insert2(ReserveDto dto, HttpServletRequest request) {
		String id=(String)request.getSession().getAttribute("id");
		String rsdate=(String)request.getParameter("rsdate");
		String reservetype=request.getParameter("ent_insertform");
		dto.setId(id);
		dto.setReservetype(reservetype);
		dao.insert2(dto);
	}

	@Override
	public void delete(int num, HttpServletRequest request) {
		dao.delete(num);
	}
	@Override
	public void delete2(int num, HttpServletRequest request) {
		dao.delete2(num);
	}

	@Override
	public void update(ReserveDto dto, HttpServletRequest request) {
		int num=Integer.parseInt(request.getParameter("num"));
		String reservetype=request.getParameter("leave_insertform");
		dto.setNum(num);
		dto.setReservetype(reservetype);
		dao.update(dto);
	}
	@Override
	public void update2(ReserveDto dto, HttpServletRequest request) {
		int num=Integer.parseInt(request.getParameter("num"));
		String reservetype=request.getParameter("ent_insertform");
		dto.setNum(num);
		dto.setReservetype(reservetype);
		dao.update2(dto);
	}
	@Override
	public void getData(String id, HttpServletRequest request) {
		ReserveDto dto=dao.getData(id);
		request.setAttribute("dto", dto);
		request.getSession().getAttribute("id");
	}

	@Override
	public void updateData(int num, ModelAndView mView) {
		ReserveDto dto=dao.updateData(num);
		mView.addObject("dto",dto);
		
	}

}
