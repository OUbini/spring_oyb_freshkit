package edu.kosmo.oyb.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import edu.kosmo.oyb.page.Criteria;
import edu.kosmo.oyb.vo.ProductVO;


public interface ProductService {
	
	List<ProductVO> getAllProductList(); //전체목록 불러오기
	List<ProductVO> getBestProductList(); //베스트제품목록 불러오기
	List<ProductVO> getNewProductList(); //신제품목록 불러오기
	List<ProductVO> getCategoryProductList(Criteria criteria, ProductVO product); //종류별 제품목록 불러오기
	int getCategoryProductTotal(); //종류별 제품개수 카운팅
	
	
}
