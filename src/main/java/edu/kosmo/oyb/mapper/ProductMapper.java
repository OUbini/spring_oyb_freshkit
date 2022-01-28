package edu.kosmo.oyb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.oyb.vo.ProductVO;

@Mapper
public interface ProductMapper {

	List<ProductVO> getProduct(ProductVO product); //메인페이지에 제품목록불러오기
	
	
	
}