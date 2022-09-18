package com.gura.lug.cs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.lug.cs.dto.CSDto;


@Repository
public class CSDaoImpl implements CSDao{
	@Autowired
	private SqlSession session;
	
	@Override
	public List<CSDto> getList(CSDto dto) {
		
		return session.selectList("cs.getList", dto);
	}

	@Override
	public int getCount(CSDto dto) {
		
		return session.selectOne("cs.getCount", dto);
	}

	@Override
	public void insert(CSDto dto) {
		session.insert("cs.insert", dto);
	}
	
	//검색 기능이 없었을 때 사용하던 메소드(지금은 사용하지않음)
	@Override
	public CSDto getData(int num) {
		
		return session.selectOne("cs.getData", num);
	}
	//검색기능이 있을 때 사용하는 메소드 (지금 사용하고있음)
	@Override
	public CSDto getData(CSDto dto) {
		
		return session.selectOne("cs.getData2", dto);
	}

	@Override
	public void addViewCount(int num) {
		session.update("cs.addViewCount", num);
	}

	@Override
	public void delete(int num) {
		session.delete("cs.delete", num);
	}

	@Override
	public void update(CSDto dto) {
		session.update("cs.update", dto);
	}

}
