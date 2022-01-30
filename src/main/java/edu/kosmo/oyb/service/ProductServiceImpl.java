package edu.kosmo.oyb.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.oyb.mapper.ProductMapper;
import edu.kosmo.oyb.vo.ProductVO;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	private ProductMapper productMapper;
	
	@Override
	public List<ProductVO> getAllProductList() {
		log.info("getAllProductList()..");
		return productMapper.getAllProduct();
	}
	

}