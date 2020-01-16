package com.situ.mall.address.domian;

import java.io.Serializable;

public class AdressLook implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long rowId;
	private Long userId;
	private String AddressLook;
	private Long zipCode;
	private Long recrivePhone;
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
	public String getAddressLook() {
		return AddressLook;
	}
	public void setAddressLook(String addressLook) {
		AddressLook = addressLook;
	}
	public Long getZipCode() {
		return zipCode;
	}
	public void setZipCode(Long zipCode) {
		this.zipCode = zipCode;
	}
	public Long getRecrivePhone() {
		return recrivePhone;
	}
	public void setRecrivePhone(Long recrivePhone) {
		this.recrivePhone = recrivePhone;
	}
	
}
