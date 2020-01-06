package com.situ.mall.product.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.mall.product.domain.Product;

@Repository
public interface ProductDao {

	Long save(Product product);

	void update(Product product);

	void delete(Long rowId);

	Product get(Long rowId);

	List<Product> find();

	List<Product> findByPage(@Param("searchProduct")Product searchProduct,@Param("firstResult") Integer firstResult, @Param("maxResults") Integer maxResults);

	Product getByName(String roleName);

	Integer getCount(@Param("searchProduct") Product searchProduct);
}
