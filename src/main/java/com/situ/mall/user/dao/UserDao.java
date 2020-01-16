package com.situ.mall.user.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.mall.user.domain.User;

@Repository
public interface UserDao {
	//注册
	Long reg(User user);
	
	User find(User user);
	
	List<User> findAll();
	
	void doUpdate(User user);
	
	void doUpdateById(Long rowId);
	
	User findByCode(String userCode);
	//逻辑删除
	void doDelete(Long rowId);
	
    void adminDelete(Long rowId);
	
	User findById(Long rowId);
	
	
}
