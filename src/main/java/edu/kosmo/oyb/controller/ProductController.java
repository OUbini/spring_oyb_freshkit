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
import edu.kosmo.oyb.service.ProductService;
import edu.kosmo.oyb.vo.ProductVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
public class ProductController {

	@Inject
	private ProductService productService;

	@GetMapping("/product/allProduct") //전체제품목록으로 이동
	public void allProduct(Model model) {
		log.info("/allProduct..");
		model.addAttribute("allProductList",productService.getAllProductList());
	}
	
	@GetMapping("/product/bestProduct") //베스트제품목록으로 이동
	public void bestProduct(Model model) {
		log.info("/bestProduct..");
		model.addAttribute("bestProductList",productService.getBestProductList());
	}

	@GetMapping("/product/newProduct") //베스트제품목록으로 이동
	public void newProduct(Model model) {
		log.info("/newProduct..");
		model.addAttribute("newProductList",productService.getNewProductList());
	}
	
	@GetMapping("/product/categoryProduct") //
	public void categoryProduct(Model model,ProductVO product,Criteria criteria) {
		log.info("/categoryProduct..");
		
		model.addAttribute("categoryProductList",productService.getCategoryProductList(criteria,product));
		int total = productService.getCategoryProductTotal();
		log.info("선택한 카테고리 게시판 총 글 갯수 : " + total);
		model.addAttribute("pageMaker", new PageVO(criteria,total));	
	}
	
	
}
