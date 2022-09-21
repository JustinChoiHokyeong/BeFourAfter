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
	
		//review의 모든 리스트 가져오기
		@Override
		public List<ReviewDto> getList(ReviewDto dto) {
			
			return session.selectList("review.getList", dto);
		}
		
		//row 의 총 개수 구하기
		@Override
		public int getCount(ReviewDto dto) {
			return session.selectOne("review.getCount", dto);
		}
		
		
		@Override
		public void insert(ReviewDto dto) {
			session.insert("review.insert", dto);
		}
		
		@Override
		public ReviewDto getData(ReviewDto dto) {
			return session.selectOne("review.getData", dto);
		}
		
		@Override
		public void addViewCount(int num) {
			session.update("review.addViewCount", num);
		}
		
		@Override
		public void delete(ReviewDto dto) {
			// TODO Auto-generated method stub
			session.delete("review.delete", dto);
			
		}

	


		
}
