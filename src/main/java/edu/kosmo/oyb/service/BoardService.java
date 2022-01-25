package edu.kosmo.oyb.service;

import java.util.List;

import edu.kosmo.oyb.vo.BoardVO;
import edu.kosmo.oyb.vo.MemberVO;

public interface BoardService {
	
	List<BoardVO> getNoticeList(); //공지사항 글목록
	List<BoardVO> getAskList(); //문의 글목록
}
