package com.situ.mall.user.service.impl;

import java.io.Serializable;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.user.dao.UserDao;
import com.situ.mall.user.domain.User;
import com.situ.mall.user.service.UserService;
import com.situ.mall.util.MD5Utils;

@Service
public class UserServiceImpl implements Serializable, UserService {

	private static final long serialVersionUID = 1L;
	
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public Long regUser(User user) {
		user.setUserPass(MD5Utils.encode(user.getUserPass()));
		user.setCreateBy("admin");
		user.setCreateDate(new Date());
		user.setActiveFlag("1");
		try {
			user.setLastIp(InetAddress.getLocalHost().getHostAddress());
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		user.setUserKind("1");
		return userDao.reg(user);
	}

	
	
	
	@Override
	public Integer find(HttpServletRequest request,User user) {
		Integer result = 0;
		user.setUserPass(MD5Utils.encode(user.getUserPass()));
		User userFind = userDao.find(user);
		if(userFind!=null) {
			user.setRowId(userFind.getRowId());
			user.setUpdateBy("admin");
			user.setUpdateDate(new Date());
			user.setLastLoginDate(new Date());
			userDao.doUpdate(user);
			HttpSession session = request.getSession();
			session.setAttribute("userSession", userFind );
			result = 1;
		}   
		return result;
	}
	
	@Override
	public Long doUpdate(HttpServletRequest request, User user) {
		Long result = 0L;
		//避免重复加密密码
		Long rowId = user.getRowId();
		String passUpdate = user.getUserPass();
		String pass = userDao.findById(rowId).getUserPass();
		if(pass.equals(passUpdate)) {
			userDao.doUpdate(user);
		}else {
			user.setUserPass(MD5Utils.encode(passUpdate));
			userDao.doUpdate(user);
		}
		HttpSession session = request.getSession();
		if(session.getAttribute("userSession")!=null) {
			session.removeAttribute("userSession");
		}
		result = 1L;
		return result;
	}
	
	
	
	@Override
	public Boolean checkByCode(String userCode) {
		// 根据角色名称查询实例
	    User user = userDao.findByCode(userCode);
		// 三元表达式，如果有返回true，如果没有返回false
	    Boolean bool = user != null ? true : false;
	    return bool;
	}

	@Override
	public User findByCode(String userCode) {
	 	User user = userDao.findByCode(userCode);
		return user;
	}


	@Override
	public Long doDelete(HttpServletRequest request, long rowId) {
		HttpSession  session = request.getSession();
		if(session.getAttribute("userSession")!=null){
			session.removeAttribute("userSession");
		}
		userDao.doDelete(rowId);
		return rowId;
	}
    
     
    //退出登录
	@Override
	public Long doOutLogin(HttpServletRequest request) {
			HttpSession session=request.getSession();
			if(session.getAttribute("userSession")!=null){
				session.removeAttribute("userSession");
			}
			return 1L;
	}

	@Override
	public User findUserById(long rowId) {
		
		return userDao.findById(rowId);
	}






	@PostConstruct
	public void initAdminData(){
		/* Log.logInfo("当UserServiceImpl的实例生成时"); */
		String userCode = "admin";
		String userPass = "123456";
		User user =userDao.findByCode(userCode);
		if(user == null) {
			user = new User();
			user.setUserName("管理员");
			user.setUserKind("2");//1是用户  2是管理员
			user.setUserCode(userCode);
			user.setUserPass(MD5Utils.encode(userPass));
			user.setUserPhone("123456");
			user.setCreateDate(new Date());
			user.setActiveFlag("1");
			try {
				user.setLastIp(InetAddress.getLocalHost().getHostAddress());
			} catch (UnknownHostException e) {
				e.printStackTrace();
			}
			user.setLastLoginDate(new Date());
			userDao.reg(user);
			
		}
		
		
	}



   
	@Override
	public List<User> findAll() {
        
		
		return userDao.findAll();
	}



    /**
     * 管理员对用户账号修改
     */
	@Override
	public Long doAdminUpdate(User user) {
		Long result = 10L;
		//避免重复加密密码
		Long rowId = user.getRowId();
		String passUpdate = user.getUserPass();
		String pass = userDao.findById(rowId).getUserPass();
		if(pass.equals(passUpdate)) {
			userDao.doUpdate(user);
		}else {
			user.setUserPass(MD5Utils.encode(passUpdate));
			userDao.doUpdate(user);
		}
		return result;
	}




	/**
	 * 管理员删除账户
	 */
	@Override
	public Long doAdminDelete(Long rowId) {
		Long result = 1L;
		userDao.adminDelete(rowId);;
		return result;
	}


}
