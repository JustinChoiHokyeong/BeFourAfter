package com.gura.lug.cs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.lug.cs.dto.CSCommentDto;


@Repository
public class CSCommentDaoImpl implements CSCommentDao{
	@Autowired
	private SqlSession session;
	
	@Override
	public List<CSCommentDto> getList(CSCommentDto dto) {
		
		return session.selectList("csComment.getList", dto);
	}

	@Override
	public void delete(int num) {
		session.update("csComment.delete", num);
	}

	@Override
	public int getSequence() {
		
		return session.selectOne("csComment.getSequence");
	}

	@Override
	public int getCount(int ref_group) {
		
		return session.selectOne("csComment.getCount", ref_group);
	}

	@Override
	public void insert(CSCommentDto dto) {
		session.insert("csComment.insert", dto);
		
	}

	@Override
	public void update(CSCommentDto dto) {
		session.update("csComment.update", dto);
	}

	@Override
	public CSCommentDto getData(int num) {

		return session.selectOne("csComment.getData", num);
	}

}
