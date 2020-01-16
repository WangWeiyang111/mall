package com.situ.mall.cart.domain;

import java.io.Serializable;

public class CartDetail implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long rowId;
	private Long userId;
	private Long productId;
	private String productName;
	private String productPicture;
	private Long productPrice;
	private Integer account;
	private Long totalPrice;
	public Long getRowId() {
		return rowId;
	}
	public void setRowId(Long rowId) {
		this.rowId = rowId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductPicture() {
		return productPicture;
	}
	public void setProductPicture(String productPicture) {
		this.productPicture = productPicture;
	}
	public Long getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Long productPrice) {
		this.productPrice = productPrice;
	}
	public Integer getAccount() {
		return account;
	}
	public void setAccount(Integer account) {
		this.account = account;
	}
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}

	
	
}
