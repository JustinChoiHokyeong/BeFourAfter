package com.gura.lug.review.dao;

import java.util.List;

import com.gura.lug.review.dto.ReviewDto;




public interface ReviewDao {
		//review 리스트 가져오기
		public List<ReviewDto> getList(ReviewDto dto);
		//모든 ROW 의 개수
		public int getCount(ReviewDto dto);
		//리뷰에 사진 저장하기
		public void insert(ReviewDto dto);
		//글정보를 활용한 글정보 얻어오기
		public ReviewDto getData(ReviewDto dto);
		//조회수 증가 시키기
		public void addViewCount(int num);
		//글 삭제
		public void delete(ReviewDto dto);
		

}
