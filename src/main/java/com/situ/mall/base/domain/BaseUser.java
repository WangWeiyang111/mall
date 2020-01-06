package com.situ.mall.base.domain;

import java.io.Serializable;
import java.util.Date;

public class BaseUser implements Serializable {

	private static final long serialVersionUID = 1L;

	private long rowId;//主键
	private String createBy;//创建人
	private Date createDate;//创建日期
	private String updateBy;//更新人
	private Date updateDate;//更新时间
	
	public long getRowId() {
		return rowId;
	}
	public void setRowId(long rowId) {
		this.rowId = rowId;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
	
}
