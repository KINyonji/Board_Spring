package com.myway.yon.domain;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface BoardDAO {

	//게시물 목록 조회
	List<BoardDTO> listAll(SearchCriteria scri);
	
	//게시물 총 갯수
	public int listCount(SearchCriteria scri);

	//글쓰기
	int insert(BoardDTO dto);

	//글 상세보기
	List<BoardDTO> selectByBid(int b_id);
	
	//조회수
	int incViewCnt(int b_id);

	//글 수정
	int update(int b_id, @Param("a")BoardDTO dto);

	//글 삭제
	int deleteByBid(int b_id);
	
	//체크박스 글 삭제
	int deleteByBidCk(Map<String, Object> result);

}