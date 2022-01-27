package edu.kosmo.oyb.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.oyb.mapper.BoardMapper;
import edu.kosmo.oyb.page.Criteria;
import edu.kosmo.oyb.vo.BoardVO;
import edu.kosmo.oyb.vo.MemberVO;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> getNoticeList(Criteria criteria) {
		log.info("getNoticeList()..");
		return boardMapper.getNoticeListWithPaging(criteria);
	}
	
	@Override
	public BoardVO readNotice(int id) {
		log.info("readNotice()..");
		upHitNotice(id);
		return boardMapper.readNotice(id);
	}
	
	@Override
	public void registerNotice(BoardVO board) {
		log.info("registerNotice()..");
		boardMapper.insertNotice(board);
	}
	
	@Override
	public void removeNotice(BoardVO board) {
		log.info("removeNotice()..");
		boardMapper.deleteNotice(board);
	}
	
	@Override
	public void modifyNotice(BoardVO board) {
		log.info("modifyNotice()..");
		boardMapper.updateNotice(board);
	}
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void registerReplyNotice(BoardVO board) {
		log.info("registerReplyNotice()..");
		boardMapper.updateShapeNotice(board);
		boardMapper.insertReplyNotice(board);
	}
	
	@Override
	public void upHitNotice(int id) {
		log.info("upHitNotice()..");
		boardMapper.updateHitNotice(id);
	}
	
	@Override
	public int getNoticeTotal() {
		log.info("getNoticeTotal()..");
		return boardMapper.getNoticeTotalCount();
	}
	
	@Override
	public List<BoardVO> getAskList(Criteria criteria) {
		log.info("getAskList()..");
		return boardMapper.getAskListWithPaging(criteria);
	}
	
	@Override
	public BoardVO readAsk(int id) {
		log.info("readAsk()..");
		upHitAsk(id);
		return boardMapper.readAsk(id);
	}
	
	@Override
	public void registerAsk(BoardVO board) {
		log.info("registerAsk()..");
		boardMapper.insertAsk(board);
	}
	
	@Override
	public void removeAsk(BoardVO board) {
		log.info("removeAsk()..");
		boardMapper.deleteAsk(board);
	}
	
	@Override
	public void modifyAsk(BoardVO board) {
		log.info("modifyAsk()..");
		boardMapper.updateAsk(board);
	}
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void registerReplyAsk(BoardVO board) {
		log.info("registerReplyAsk()..");
		boardMapper.updateShapeAsk(board);
		boardMapper.insertReplyAsk(board);
	}
	
	@Override
	public void upHitAsk(int id) {
		log.info("upHitAsk()..");
		boardMapper.updateHitAsk(id);
	}
	
	@Override
	public int getAskTotal() {
		log.info("getAskTotal()..");
		return boardMapper.getAskTotalCount();
	}
	

}