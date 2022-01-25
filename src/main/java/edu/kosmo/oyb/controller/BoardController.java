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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.kosmo.oyb.service.BoardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
public class BoardController {

	@Inject
	private BoardService boardService;

	@GetMapping("/board/notice")
	public void notice(Model model) {
		log.info("/notice..");
		model.addAttribute("noticeList",boardService.getNoticeList());
	}
	
	@GetMapping("/board/ask")
	public void ask(Model model) {
		log.info("/ask..");
		model.addAttribute("askList",boardService.getAskList());
	}


}
