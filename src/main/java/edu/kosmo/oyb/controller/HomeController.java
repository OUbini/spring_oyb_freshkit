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

import edu.kosmo.oyb.page.Criteria;
import edu.kosmo.oyb.page.PageVO;
import edu.kosmo.oyb.service.BoardService;
import edu.kosmo.oyb.service.ProductService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class HomeController {
	
	@Inject
	private ProductService productService;
	@Inject
	private BoardService boardService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Criteria criteria,Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		model.addAttribute("bestProductList",productService.getBestProductList());
		model.addAttribute("newProductList",productService.getNewProductList());
		model.addAttribute("noticeList",boardService.getNoticeList(criteria));
		int total = boardService.getNoticeTotal();
		model.addAttribute("pageMaker", new PageVO(criteria,total));

		return "home";
	}

	@GetMapping("/login/loginForm")
	public String loginForm() {

		log.info("FreshKit login");

		return "login/loginForm";
	}
	
	@GetMapping("/myPage")
	public String myPage() {
		log.info("Mypage..");
		return "/myPage";
	}
	
	@GetMapping("/user/userHome")
	public void userHome() {
		log.info("userHome..");
	}

	@GetMapping("/admin/adminHome")
	public void adminHome() {
		log.info("adminHome..");
	}


}
