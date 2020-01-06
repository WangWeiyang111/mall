package com.situ.mall.user.domain;

import java.io.Serializable;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.situ.mall.base.domain.BaseUser;
@Alias("User")
public class User extends BaseUser implements Serializable {

	private static final long serialVersionUID = 1L;

	private String userKind;//用户类型(商家还是用户)
	private String userName;//用户名
	private String userCode;//邮件账号
	private String userPass;//密码
	private String userPhone;//用户电话
	private String activeFlag;//是否锁定(封号)
	private String lastIp;//最后的登录ip
	private Date lastLoginDate;//最后的登录时间
	
	
	public String getUserKind() {
		return userKind;
	}
	public void setUserKind(String userKind) {
		this.userKind = userKind;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userEmail) {
		this.userCode = userEmail;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(String activeFlag) {
		this.activeFlag = activeFlag;
	}
	public String getLastIp() {
		return lastIp;
	}
	public void setLastIp(String lastIp) {
		this.lastIp = lastIp;
	}
	public Date getLastLoginDate() {
		return lastLoginDate;
	}
	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
}
