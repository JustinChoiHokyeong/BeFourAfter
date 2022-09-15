package com.gura.lug.reserve.dao;

import java.util.List;

import com.gura.lug.reserve.dto.ReserveDto;

public interface ReserveDao {
		//예약목록 전체
		public List<ReserveDto> getList(ReserveDto dto);
		//예약목록 한개
		public ReserveDto getData(int num);
		//예약목록 갯수
		public int getCount(ReserveDto dto);
		//예약 추가(출국)
		public void insert(ReserveDto dto);
		//예약 추가(입국)
		public void insert2(ReserveDto dto);
		//예약 삭제
		public void delete(int num);
		//예약 수정(출국)
		public void update(ReserveDto dto);
		//예약 수정(입국)
		public void update2(ReserveDto dto);	
}
