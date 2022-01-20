package edu.kosmo.oyb;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;


@Log4j
@RequestMapping("/security/*")
@Controller
public class SecurityController {
	
	@GetMapping("/admin")
	public String admin() {
		log.info("/admin");
		
		return "/security/admin";
	}
	
	@GetMapping("/all")
	public String all() {
		
		System.out.println("do all access everybody");
		
		return "/security/all";
	}

	@GetMapping("/member")
	public String member() {
		
		System.out.println("logined member");
		
		return "/security/member";
	}
	
	@GetMapping("/accessError")
	public void accessError(Model model) {

		log.info("/accessError");
		model.addAttribute("msg","ACCESS Denied");

	}
}
