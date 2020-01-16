package com.situ.mall.cart.domain;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;
@Alias("Cart")
public class Cart implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long rowId;
	private Long userId;
	private Long productId;
	private Long account;
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
	public Long getAccount() {
		return account;
	}
	public void setAccount(Long account) {
		this.account = account;
	}
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
}
