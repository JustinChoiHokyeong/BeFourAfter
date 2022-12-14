package com.gura.lug.cs.dao;

import java.util.List;

import com.gura.lug.cs.dto.CSDto;

public interface CSDao {
	//글목록
	public List<CSDto> getList(CSDto dto);
	//글의 갯수
	public int getCount(CSDto dto);
	//글 추가
	public void insert(CSDto dto);
	//글정보 얻어오기
	public CSDto getData(int num);
	//키워드를 활용한 글정보 얻어오기
	public CSDto getData(CSDto dto);
	//조회수 증가 시키기
	public void addViewCount(int num);
	//글 삭제
	public void delete(int num);
	//글 수정
	public void update(CSDto dto);

}
