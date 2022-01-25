package edu.kosmo.oyb.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.oyb.mapper.BoardMapper;
import edu.kosmo.oyb.vo.BoardVO;
import edu.kosmo.oyb.vo.MemberVO;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> getNoticeList() {
		log.info("getNoticeList()..");
		
		return boardMapper.getNoticeList();
	}
	
	@Override
	public List<BoardVO> getAskList() {
		log.info("getAskList()..");
		
		return boardMapper.getAskList();
	}
	
}