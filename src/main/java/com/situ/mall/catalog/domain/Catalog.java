package com.situ.mall.catalog.domain;

import java.io.Serializable;
import java.util.List;

import org.apache.ibatis.type.Alias;

import com.situ.mall.base.domain.BaseUser;
import com.situ.mall.product.domain.Product;

@Alias("Catalog")
public class Catalog extends BaseUser implements Serializable {

	private static final long serialVersionUID = 1L;

	private String catalogName;
	List<Product> product;
	
	public String getCatalogName() {
		return catalogName;
	}
	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}
	public List<Product> getProduct() {
		return product;
	}
	public void setProduct(List<Product> product) {
		this.product = product;
	}
    
}
