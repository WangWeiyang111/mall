package com.situ.mall.address.domian;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;

import com.situ.mall.base.domain.BaseUser;


@Alias("AddressDetail")
public class AddressDetail extends BaseUser implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long userId;
	private String areaName;
	private String detailedAddress;
	private Integer zipCode;
	private Integer recrivePhone;
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
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
	public Integer getZipCode() {
		return zipCode;
	}
	public void setZipCode(Integer zipCode) {
		this.zipCode = zipCode;
	}
	public Integer getRecrivePhone() {
		return recrivePhone;
	}
	public void setRecrivePhone(Integer recrivePhone) {
		this.recrivePhone = recrivePhone;
	}
	
}
