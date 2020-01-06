package com.situ.mall.util;

import java.io.Serializable;

/**
 * 系统配置信息
 * 
 * @author 
 *
 */
public class ConfigUtils implements Serializable {
	private static final long serialVersionUID = 1L;
	// 用户登录-session object 名称
	public static final String SESSION_USER_LOGIN = "userLogin";
	// 管理员登录-session object 名称
	public static final String SESSION_ADMIN_LOGIN = "adminLogin";
	// 用户登录- cookie name
	public static final String COOKIE_USER_NAME = "user.all.com";
	//
	public static final String COOKIE_ADMIN_NAME = "admin.mall.com";

	public static final String SYS = "管理员";
}
