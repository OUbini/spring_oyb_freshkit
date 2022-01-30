package edu.kosmo.oyb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.kosmo.oyb.vo.ProductVO;

@Mapper
public interface ProductMapper {

	@Select("select * from product")
	List<ProductVO> getAllProduct(); //전체목록 불러오기
	
	//List<ProductVO> getBestProduct(ProductVO product); //베스트제품목록 불러오기
	//List<ProductVO> getNewProduct(ProductVO product); //신제품목록 불러오기
	//List<ProductVO> getCategoryProduct(ProductVO product); //제품종류별목록 불러오기
	//ProductVO getProductDetail(ProductVO product);//제품상세정보 불러오기
	//void insertProduct(ProductVO product); //제품등록
	
}