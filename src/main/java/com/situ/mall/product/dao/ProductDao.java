package com.situ.mall.product.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.mall.product.domain.Product;
import com.situ.mall.product.domain.VwProduct;

@Repository
public interface ProductDao {

	Long save(Product product);

	void update(Product product);
	
	void doUpdateState(@Param("rowId") Long rowId ,@Param("productState")String productState);
	
	void delete(Long rowId);

	Product get(Long rowId);

	List<Product> find();
	
	List<Product> findProductByCatalogId(Long catalogId);
	
	List<VwProduct> findVw();

	Product getByName(String productName);

	
}
