package edu.kosmo.oyb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.kosmo.oyb.page.Criteria;
import edu.kosmo.oyb.vo.ProductVO;

@Mapper
public interface ProductMapper {

	@Select("select * from product")
	List<ProductVO> getAllProduct(); //전체목록 불러오기
	
	@Select("select * from product order by mark desc")
	List<ProductVO> getBestProduct(); //베스트제품목록 불러오기
	
	@Select("select * from product order by id desc")
	List<ProductVO> getNewProduct(); //신제품목록 불러오기
	
	List<ProductVO> getCategoryProductWithPaging(Criteria criteria,ProductVO product); //제품종류별목록 불러오기
	//ProductVO getProductDetail(ProductVO product);//제품상세정보 불러오기
	//void insertProduct(ProductVO product); //제품등록
	
}