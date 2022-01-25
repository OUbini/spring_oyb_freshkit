package edu.kosmo.oyb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.oyb.vo.BoardVO;

@Mapper
public interface BoardMapper {

	
	/*
	 * 공지사항
	 */
	List<BoardVO> getNoticeList(); //글목록
	
	/*
	 * 문의
	 */
	List<BoardVO> getAskList(); //글목록
	
}