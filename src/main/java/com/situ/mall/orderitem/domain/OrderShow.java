package com.situ.mall.orderitem.domain;

import java.io.Serializable;

public class OrderShow implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long rowId;
	private Long userId;
	private Long orderState;
	private String userName;
	private String areaName;
	private Long totalPrice;
	private String detailedAddress;
	private String zipCode;
	private Long consigneeTlp;
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
	public Long getOrderState() {
		return orderState;
	}
	public void setOrderState(Long orderState) {
		this.orderState = orderState;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public Long getConsigneeTlp() {
		return consigneeTlp;
	}
	public void setConsigneeTlp(Long consigneeTlp) {
		this.consigneeTlp = consigneeTlp;
	}
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
}
