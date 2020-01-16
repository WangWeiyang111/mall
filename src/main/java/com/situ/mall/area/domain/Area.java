package com.situ.mall.area.domain;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;

import com.situ.mall.base.domain.BaseUser;


@Alias("Area")
public class Area extends BaseUser implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer areaCode;
	private String areaName;
	private Integer parentCode;
	private Integer areaRunk;
	private Integer hasChild;
	
	public Integer getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(Integer areaCode) {
		this.areaCode = areaCode;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public Integer getParentCode() {
		return parentCode;
	}
	public void setParentCode(Integer parentCode) {
		this.parentCode = parentCode;
	}
	public Integer getAreaRunk() {
		return areaRunk;
	}
	public void setAreaRunk(Integer areaRunk) {
		this.areaRunk = areaRunk;
	}
	public Integer getHasChild() {
		return hasChild;
	}
	public void setHasChild(Integer hasChild) {
		this.hasChild = hasChild;
	}

}
