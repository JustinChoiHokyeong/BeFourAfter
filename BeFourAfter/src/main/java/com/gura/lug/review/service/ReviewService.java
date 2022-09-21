package com.gura.lug.review.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.gura.lug.review.dto.ReviewDto;


public interface ReviewService {
		//리뷰의 list 가져오기
		public void getList(HttpServletRequest request);
		//리뷰에 사진 upload & DB 저장하기
		public void saveImage(ReviewDto dto, HttpServletRequest request);
		//리뷰에 사진 저장하기 - db에만 저장(upload 작업은 이미 완료)
		public void insert(ReviewDto dto, HttpServletRequest request);
		//리뷰 detail 페이지에 필요한 data를 ModelAndView 에 저장
		public void getDetail(ModelAndView mView, ReviewDto dto);
		//리뷰 글 삭제
		public void deleteReview(ReviewDto dto, HttpServletRequest request);
}


