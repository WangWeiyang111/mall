package com.situ.mall.address.domian;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;

import com.situ.mall.base.domain.BaseUser;

@Alias("Address")
public class Address extends BaseUser implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long userId;//用户Id
	private Integer provinceCode;//省Code
	private Integer cityCode;//市Code
	private Integer districtCode;//区Code
	private String detailedAddress;//详细地址
	private Integer zipCode;//邮编
	private Integer receivePhone;//收货电话
	private Integer activeFlag;
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Integer getProvinceCode() {
		return provinceCode;
	}
	public void setProvinceCode(Integer provinceCode) {
		this.provinceCode = provinceCode;
	}
	public Integer getCityCode() {
		return cityCode;
	}
	public void setCityCode(Integer cityCode) {
		this.cityCode = cityCode;
	}
	public Integer getDistrictCode() {
		return districtCode;
	}
	public void setDistrictCode(Integer districtCode) {
		this.districtCode = districtCode;
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
	public Integer getReceivePhone() {
		return receivePhone;
	}
	public void setReceivePhone(Integer receivePhone) {
		this.receivePhone = receivePhone;
	}
	public Integer getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(Integer activeFlag) {
		this.activeFlag = activeFlag;
	}

}
