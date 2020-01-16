package com.situ.mall.user.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.situ.mall.user.domain.User;

public interface UserService {

	Long regUser(User user);
	
	Integer find(HttpServletRequest request, User user);
	//展示
	List<User> findAll();

	Boolean checkByCode(String userCode);
	
	User findByCode(String userCode);
	
	Long doUpdate(HttpServletRequest request, User user);
	
	Long doAdminUpdate(User user);
	
	Long doAdminDelete(Long rowId);
	
	//删除账户
	Long doDelete( HttpServletRequest request, long rowId); 
	
	Long doOutLogin(HttpServletRequest request);
	//根据id找到用户
	User findUserById(long rowId);
}
