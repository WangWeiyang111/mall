package com.situ.mall.user.controller;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.situ.mall.catalog.service.CatalogService;

@Controller
public class UserControllerGoIndex implements Serializable {

	private static final long serialVersionUID = 1L;
	

	@Autowired
	private CatalogService catalogService;
	
	/**
	 * 
	 * @跳转主页
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping(path={"/" , "/mall/goIndex"})
	public ModelAndView firstGoIndex(ModelAndView modelAndView) {
		/* modelAndView.addObject("catalogList", catalogService.find()); */
		modelAndView.setViewName("user/index");
		return modelAndView;
	}
}
