package com.situ.mall.orderitem.domain;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;
@Alias("OrderList")
public class OrderList implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Long rowId;
	private Long orderCode;
	private Long productId;
	private Integer account;
	private Long totaLPrice;
	
	public OrderList() {
		
	}
	public Long getRowId() {
		return rowId;
	}
	public void setRowId(Long rowId) {
		this.rowId = rowId;
	}
	public Long getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(Long orderCode) {
		this.orderCode = orderCode;
	}
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public Integer getAccount() {
		return account;
	}
	public void setAccount(Integer account) {
		this.account = account;
	}
	public Long getTotaLPrice() {
		return totaLPrice;
	}
	public void setTotaLPrice(Long totaLPrice) {
		this.totaLPrice = totaLPrice;
	}
	
	
	
	
	
}
