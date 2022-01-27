package edu.kosmo.oyb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.oyb.page.Criteria;
import edu.kosmo.oyb.vo.BoardVO;

@Mapper
public interface BoardMapper {
	
	/*
	 * 공지사항
	 */
	List<BoardVO> getNoticeListWithPaging(Criteria criteria); //글목록 페이징
	BoardVO readNotice(int id); //글보기
	void insertNotice(BoardVO board); //글작성
	void deleteNotice(BoardVO board); //글삭제
	void updateNotice(BoardVO board); //글수정
	void updateShapeNotice(BoardVO board); //답글위치
	void insertReplyNotice(BoardVO board); //답글작성
	void updateHitNotice(int id); //조회수
	int getNoticeTotalCount(); //글갯수 카운팅
	
	/*
	 * 문의
	 */
	List<BoardVO> getAskListWithPaging(Criteria criteria); //글목록 페이징
	BoardVO readAsk(int id); //글보기
	void insertAsk(BoardVO board); //글작성
	void deleteAsk(BoardVO board); //글삭제
	void updateAsk(BoardVO board); //글수정
	void updateShapeAsk(BoardVO board); //답글위치
	void insertReplyAsk(BoardVO board); //답글작성
	void updateHitAsk(int id); //조회수
	int getAskTotalCount(); //글갯수 카운팅
	

}