package com.situ.mall.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.situ.mall.base.domain.PageData;
import com.situ.mall.product.domain.Product;

public interface ProductService {

	Long saveProduct(HttpServletRequest request , Product product);

	List<Product> find();

	List<Product> findByPage(Integer pageNo, Product searchProduct);

	Product findProductById(Long rowId);

	Long doUpdate(Product product);

	Long doDeleteProduct(Long rowId);

	Boolean checkProductName(String productName);

	PageData buildPageData(Integer pageNo,Product searchProduct);
	
}
