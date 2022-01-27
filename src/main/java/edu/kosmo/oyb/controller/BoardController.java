package edu.kosmo.oyb.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.kosmo.oyb.page.Criteria;
import edu.kosmo.oyb.page.PageVO;
import edu.kosmo.oyb.service.BoardService;
import edu.kosmo.oyb.vo.BoardVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
public class BoardController {

	@Inject
	private BoardService boardService;

	@GetMapping("/board/notice") //공지사항게시판으로 이동
	public String notice(Criteria criteria, Model model) {
		log.info("/notice(Paging)..");
		model.addAttribute("noticeList",boardService.getNoticeList(criteria));
		
		int total = boardService.getNoticeTotal();
		log.info("공지사항 게시판 총 글 갯수 : " + total);
		model.addAttribute("pageMaker", new PageVO(criteria,total));
		
		return "board/notice";
	}
	
	@GetMapping("/board/notice_view") //공지사항게시판 글 보기
	public void notice_view(BoardVO board,Model model) {
		log.info("/notice_view..");
		log.info("BoardVO :" + board);
		int id = board.getId();
		
		model.addAttribute("notice_view",boardService.readNotice(id));
	}
	
	@GetMapping("/board/notice_write_view") //공지사항게시판 글 쓰기
	public String notice_write_view() {
		log.info("/notice_write_view..");
		return "board/notice_write_view";
	}
	
	@PostMapping("/board/notice_write") //공지사항게시판 글 등록
	public String notice_write(BoardVO board) {
		
		log.info("/notice_write()..");
		boardService.registerNotice(board);
		
		return "redirect:/board/notice";
	}
	
	@GetMapping("/board/notice_delete") //공지사항게시판 글 삭제
	public String notice_delete(BoardVO board) {
		log.info("/notice_delete..");
		boardService.removeNotice(board);
		return "redirect:/board/notice";
	}
	
	@GetMapping("/board/notice_modify_view") //공지사항게시판 글 수정 페이지로 이동
	public String notice_modify_view(BoardVO board, Model model) {
		log.info("/notice_modify_view..");
		int id = board.getId();
		model.addAttribute("notice_modify_view",boardService.readNotice(id));
		return "board/notice_modify_view";
	}
	
	@PostMapping("/board/notice_modify") //공지사항게시판 글 수정
	public String notice_modify(BoardVO board) {
		log.info("/notice_modify..");
		boardService.modifyNotice(board);
		return "redirect:/board/notice";
	}

	@GetMapping("/board/notice_reply_view") //공지사항게시판 답글 페이지로 이동
	public String notice_reply_view(BoardVO board, Model model) {
		log.info("/notice_reply_view..");
		int id = board.getId();
		model.addAttribute("notice_reply_view",boardService.readNotice(id));
		return "board/ask_reply_view";
	}
	
	@PostMapping("/board/notice_reply") //공지사항게시판 답글 등록
	public String notice_reply(BoardVO board) {
		log.info("/notice_reply..");
		boardService.registerReplyNotice(board);
		return "redirect:/board/notice";
	}
	
	@GetMapping("/board/ask") //문의게시판 글 목록
	public String ask(Criteria criteria, Model model) {
		log.info("/ask(Paging)..");
		model.addAttribute("askList",boardService.getAskList(criteria));
		
		int total = boardService.getAskTotal();
		log.info("문의게시판 총 글 갯수 : " + total);
		model.addAttribute("pageMaker", new PageVO(criteria,total));
		
		return "board/ask";
	}
	
	@GetMapping("/board/ask_view") //문의게시판 글 보기
	public void ask_view(BoardVO boardVO,Model model) {
		log.info("/ask_view..");
		log.info("BoardVO :" + boardVO);
		int id = boardVO.getId();
		
		model.addAttribute("ask_view",boardService.readAsk(id));
	}
	
	@GetMapping("/board/ask_write_view") //문의게시판 글 쓰기
	public String ask_write_view() {
		log.info("/ask_write_view..");
		return "board/ask_write_view";
	}
	
	@PostMapping("/board/ask_write") //문의게시판 글 등록
	public String ask_write(BoardVO board) {
		
		log.info("/ask_write()..");
		boardService.registerAsk(board);
		
		return "redirect:/board/ask";
	}
	
	@GetMapping("/board/ask_delete") //문의게시판 글 삭제
	public String ask_delete(BoardVO board) {
		log.info("/ask_delete..");
		boardService.removeAsk(board);
		return "redirect:/board/ask";
	}
	
	@GetMapping("/board/ask_modify_view") //문의게시판 글 수정 페이지로 이동
	public String ask_modify_view(BoardVO board, Model model) {
		log.info("/ask_modify_view..");
		int id = board.getId();
		model.addAttribute("ask_modify_view",boardService.readAsk(id));
		return "board/ask_modify_view";
	}
	
	@PostMapping("/board/ask_modify") //문의게시판 글 수정
	public String ask_modify(BoardVO board) {
		log.info("/ask_modify..");
		boardService.modifyAsk(board);
		return "redirect:/board/ask";
	}

	@GetMapping("/board/ask_reply_view") //문의게시판 답글 페이지로 이동
	public String ask_reply_view(BoardVO board, Model model) {
		log.info("/ask_reply_view..");
		int id = board.getId();
		model.addAttribute("ask_reply_view",boardService.readAsk(id));
		return "board/ask_reply_view";
	}
	
	@PostMapping("/board/ask_reply") //문의게시판 답글 등록
	public String ask_reply(BoardVO board) {
		log.info("/ask_reply..");
		boardService.registerReplyAsk(board);
		return "redirect:/board/ask";
	}

}
