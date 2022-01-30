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

import edu.kosmo.oyb.service.ProductService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
public class ProductController {

	@Inject
	private ProductService productService;

	@GetMapping("/product/allProduct") //공지사항게시판으로 이동
	public void allProduct(Model model) {
		log.info("/allProduct..");
		model.addAttribute("allProductList",productService.getAllProductList());
	}

}
