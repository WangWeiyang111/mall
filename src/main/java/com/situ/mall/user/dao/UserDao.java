package com.situ.mall.user.dao;

import org.springframework.stereotype.Repository;

import com.situ.mall.user.domain.User;

@Repository
public interface UserDao {
	
	long reg(User user);
	
	User find(User user);
	
	void doUpdate(User user);
	
	void doUpdateById(Long rowId);
	
	User findByCode(String userCode);
	
	void doDelete(long userId);

	User findById(long rowId);
}
