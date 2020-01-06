package com.situ.mall.user.service;

import javax.servlet.http.HttpServletRequest;

import com.situ.mall.user.domain.User;

public interface UserService {

	long regUser(User user);
	
	Integer find(HttpServletRequest request, User user);

	boolean checkByCode(String userCode);
	
	User findByCode(String userCode);
	
	long doUpdate(HttpServletRequest request, User user);
	//删除账户
	long doDelete( HttpServletRequest request, long rowId); 
	
	long doOutLogin(HttpServletRequest request);
	//根据id找到用户
	User findUserById(long rowId);
}
