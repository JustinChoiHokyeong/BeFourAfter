package com.gura.lug.reserve.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.lug.reserve.dto.ReserveDto;

@Repository
public class ReserveDaoImpl implements ReserveDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<ReserveDto> getList(ReserveDto dto) {
		
		List<ReserveDto> list=session.selectList("reserve.getList", dto);
		return list;
	}
	@Override
	public List<ReserveDto> getList2(ReserveDto dto) {
		
		List<ReserveDto> list=session.selectList("reserve.getList2", dto);
		return list;
	}

	@Override
	public ReserveDto getData(String id) {
		ReserveDto dto=session.selectOne("reserve.getData", id);
		
		return dto;
	}

	@Override
	public void insert(ReserveDto dto) {
		session.selectOne("reserve.insert", dto);
	}
	
	@Override
	public void insert2(ReserveDto dto) {
		session.selectOne("reserve.insert2", dto);
	}

	@Override
	public void delete(int num) {
		session.selectOne("reserve.delete", num);
	}
	@Override
	public void delete2(int num) {
		session.selectOne("reserve.delete2", num);
	}

	@Override
	public void update(ReserveDto dto) {
		session.selectOne("reserve.update", dto);
	}
	
	@Override
	public void update2(ReserveDto dto) {
		session.selectOne("reserve.update2", dto);
	}

	@Override
	public int getCount(ReserveDto dto) {
		
		int count=session.selectOne("reserve.getCount", dto);
		return count;
	}
	
	@Override
	public int getCount2(ReserveDto dto) {
		
		int count=session.selectOne("reserve.getCount2", dto);
		return count;
	}

	@Override
	public ReserveDto updateData(int num) {
		return session.selectOne("reserve.updateData", num);
	}
	 
	
}
