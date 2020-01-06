package com.situ.mall.user.controller;

import java.io.Serializable;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserControllerGoIndex implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 
	 * @跳转主页
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping(path={"/" , "/mall/goIndex"})
	public ModelAndView firstGoIndex(ModelAndView modelAndView) {
		modelAndView.setViewName("user/index");
		return modelAndView;
	}
}
