package edu.kosmo.oyb.service;

import java.util.List;

import edu.kosmo.oyb.page.Criteria;
import edu.kosmo.oyb.vo.BoardVO;
import edu.kosmo.oyb.vo.MemberVO;

public interface BoardService {
	
	List<BoardVO> getNoticeList(Criteria criteria); //공지사항 글목록 페이징
	BoardVO readNotice(int id); //공지사항 글보기
	void registerNotice(BoardVO board); //공지사항 글작성
	void removeNotice(BoardVO board); //공지사항 글삭제
	void modifyNotice(BoardVO board); //공지사항 글수정
	void registerReplyNotice(BoardVO board); //공지사항 답글작성
	void upHitNotice(int id);//공지사항 글조회
	int getNoticeTotal(); //공지사항 글갯수 카운팅

	List<BoardVO> getAskList(Criteria criteria);//문의 글목록 페이징
	BoardVO readAsk(int id); //문의 글보기
	void registerAsk(BoardVO board); //문의 글작성
	void removeAsk(BoardVO board); //문의 글삭제
	void modifyAsk(BoardVO board); //문의 글수정
	void registerReplyAsk(BoardVO board); //문의 답글작성
	void upHitAsk(int id);//문의 글조회
	int getAskTotal(); //문의 글갯수 카운팅

	
}
