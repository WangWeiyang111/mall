package com.situ.mall.user.controller;

import java.io.Serializable;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.mall.user.domain.User;
import com.situ.mall.user.service.UserService;

@RequestMapping("/admin")
@Controller
public class AdminController implements Serializable {

	private static final long serialVersionUID = 1L;

	@Autowired
	private  UserService userService;
	
	
	
	/**
	 * 
	 * @跳转后台用户管理页面
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goadminuserindex")
	public ModelAndView goAccount(ModelAndView modelAndView) {
		modelAndView.setViewName("user/user_index");
		return modelAndView;
	}
	

	
	/**
	 * @管理员新增
	 * @param user
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doadminadd")
	public Long doAdminAdd(User user) {
		
		return userService.regUser(user);
	}
	
	
	/**
	 * 
	 * @展示all
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/adminfind")
	public ModelAndView findAll(ModelAndView modelAndView) {
		 // 要展示的列表数据
		modelAndView.addObject("adminUserList",userService.findAll());
		modelAndView.setViewName("user/user_list");
		
		return modelAndView;
	}
	 /**
	  * 
	  * @根据id取user
	  * @param rowId
	  * @return
	  */
	@ResponseBody
	@RequestMapping("/goupdate/{rowId}")
	public User goUpdate(@PathVariable("rowId") Long rowId) {
		
		return userService.findUserById(rowId);
	}
	
	/**
	 * @修改账户
	 * @param rowId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doadminupdate")
	public Long doUpdate (User user) {
		
		return userService.doAdminUpdate(user);
	}
	
	
	

	/**
	 * @修改账户
	 * @param rowId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doadmindelete/{rowId}")
	public Long doAdminDelete (@PathVariable("rowId") Long rowId) {
		
		return userService.doAdminDelete(rowId);
	}
	
	
	
	
}
