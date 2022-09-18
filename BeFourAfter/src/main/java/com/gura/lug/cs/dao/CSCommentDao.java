package com.gura.lug.cs.dao;

import java.util.List;

import com.gura.lug.cs.dto.CSCommentDto;


public interface CSCommentDao {
	//댓글 목록 얻어오기 
	public List<CSCommentDto> getList(CSCommentDto dto);
	//댓글 삭제 
	public void delete(int num);
	//댓글 추가 
	public void insert(CSCommentDto dto);
	//추가할 댓글의 글번호를 리턴하는 메소드 
	public int getSequence();
	//댓글 수정
	public void update(CSCommentDto dto);
	//댓글 하나의 정보를 리턴하는 메소드
	public CSCommentDto getData(int num);
	//댓글의 갯수를 리턴하는 메소드
	public int getCount(int ref_group);
}
