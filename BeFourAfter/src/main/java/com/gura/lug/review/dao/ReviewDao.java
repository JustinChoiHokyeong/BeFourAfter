package com.gura.lug.review.dao;

import java.util.List;

import com.gura.lug.review.dto.ReviewDto;



public interface ReviewDao {
		//review 리스트 가져오기
		public List<ReviewDto> getList(ReviewDto dto);
		//모든 ROW 의 개수
		public int getCount();
		//리뷰에 사진 저장하기
		public void insert(ReviewDto dto);
		//pk num 에 해당하는 DB 에서 리뷰 게시글 하나의 data 가져오기
		public ReviewDto getData(int num);
}
