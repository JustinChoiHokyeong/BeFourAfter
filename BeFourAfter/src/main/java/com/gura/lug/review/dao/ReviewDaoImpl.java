package com.gura.lug.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.lug.review.dto.ReviewDto;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	
	@Autowired
	private SqlSession session;
	
		//gallery 의 모든 리스트 가져오기
		@Override
		public List<ReviewDto> getList(ReviewDto dto) {
			
			return session.selectList("review.getList", dto);
		}
		
		//row 의 총 개수 구하기
		@Override
		public int getCount() {
			return session.selectOne("review.getCount");
		}
		
		
		@Override
		public void insert(ReviewDto dto) {
			session.insert("review.insert", dto);
		}
		
		
		@Override
		public ReviewDto getData(int num) {
			return session.selectOne("review.getData", num);
		}
}
