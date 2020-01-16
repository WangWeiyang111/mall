package com.situ.mall.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import com.situ.mall.product.domain.Product;
import com.situ.mall.product.domain.VwProduct;

public interface ProductService {

	Long saveProduct(HttpServletRequest request , Product product);

	List<Product> find();
	
	List<VwProduct> findVw();

	Product findProductById(Long rowId);
	
	List<Product> findProductByCatalogId(Long catalogId);

	Long doUpdate(Product product);
	
	Long doUpdateState(@Param("rowId") Long rowId ,String productState);
	
	Long doDeleteProduct(Long rowId);

}
