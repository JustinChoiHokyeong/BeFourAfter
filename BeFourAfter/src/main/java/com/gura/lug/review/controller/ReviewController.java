package com.gura.lug.review.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gura.lug.review.dto.ReviewDto;
import com.gura.lug.review.service.ReviewService;


@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService service;
	
	//review list 페이지로 이동
	@RequestMapping(value = "/review/list")
	public String getList(HttpServletRequest request) {
		//view 페이지에 사용될 데이터는 request 영역에 담는다.
		service.getList(request);
		
		return "review/list";
	}
	
	//review 사진 업로드 form 페이지로 이동
	@RequestMapping(value = "/review/upload_form")
	public ModelAndView authUploadForm(HttpServletRequest request) {
		
		return new ModelAndView("review/upload_form");
	}
	
	//review 사진 업로드 & DB 저장
	@RequestMapping(value = "/review/upload")
	public ModelAndView authUpload(ReviewDto dto, HttpServletRequest request) {
		//form 에서 dto 로 데이터 받아옴
		//dto : title, MultipartFile image 를 가지고 있다.
		//request :  imagePath 만드는데 사용, session 영역의 id 가져오는데 사용
		service.saveImage(dto, request);
		
		return new ModelAndView("review/upload");
	}
	
	
	//imagePath 구성 X -> dto 로 imagePath 를 받아서 DB 에 저장하기
	@RequestMapping(value = "/review/insert")
	public ModelAndView authInsert(ReviewDto dto, HttpServletRequest request) {
		//dto : title, imagePath 가지고 있다.
		//request : dto 에 writer(id) 추가
		service.insert(dto, request);
		
		return new ModelAndView("review/upload");
	}
	
	//review 게시글의 num 이 parameter get 방식으로 넘어온다.
	//detail 페이지
	@RequestMapping(value = "/review/detail", method = RequestMethod.GET)
	public ModelAndView detail(ModelAndView mView, ReviewDto dto) {
		//review detail 페이지에 필요한 data를 num 으로 가져와, ModelAndView 에 저장
		service.getDetail(mView, dto);
		mView.setViewName("review/detail");
		
		return mView;
	}
	
	//리뷰글 삭제 요청 처리
	@RequestMapping("/review/delete")
	public ModelAndView authDelete(ReviewDto dto, HttpServletRequest request) {
		service.deleteReview(dto, request);
		return new ModelAndView("review/delete");
	}



}
