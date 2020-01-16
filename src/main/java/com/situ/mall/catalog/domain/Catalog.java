package com.situ.mall.catalog.domain;

import java.io.Serializable;
import java.util.List;

import org.apache.ibatis.type.Alias;

import com.situ.mall.base.domain.BaseUser;

@Alias("Catalog")
public class Catalog extends BaseUser implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long parentId;//父级目录的id
	private String catalogName;//目录名称
	private String catalogInfo;//目录信息
	List<Catalog> catalogList;
	
	public Long getParentId() {
		return parentId;
	}
	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}
	public String getCatalogName() {
		return catalogName;
	}
	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}
	public List<Catalog> getCatalogList() {
		return catalogList;
	}
	public void setCatalogList(List<Catalog> catalogList) {
		this.catalogList = catalogList;
	}
	public String getCatalogInfo() {
		return catalogInfo;
	}
	public void setCatalogInfo(String catalogInfo) {
		this.catalogInfo = catalogInfo;
	}
	
	
}
