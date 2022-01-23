package edu.kosmo.oyb;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.kosmo.oyb.service.MemberService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	@GetMapping("/add/addForm")
	public void memberForm() {
		log.info("Welcome memberForm");
	}
	
	@PostMapping("/add/addMember")
	public String addMember() {
		log.info("(POST)Registration COMPLETE");
		return "redirect/";
	}


}
