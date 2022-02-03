package edu.kosmo.oyb.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import edu.kosmo.oyb.vo.ProductVO;


public interface ProductService {
	
	List<ProductVO> getAllProductList(); //전체목록 불러오기
	List<ProductVO> getBestProductList(); //베스트제품목록 불러오기
	List<ProductVO> getNewProductList(); //신제품목록 불러오기

}
