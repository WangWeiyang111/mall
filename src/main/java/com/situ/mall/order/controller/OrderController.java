package com.situ.mall.order.controller;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.mall.address.domian.AdressLook;
import com.situ.mall.address.service.AddressService;
import com.situ.mall.cart.dao.CartDao;
import com.situ.mall.cart.domain.CartDetail;
import com.situ.mall.cart.service.CartService;
import com.situ.mall.order.service.OrderService;

@RequestMapping("/order")
@Controller
public class OrderController implements Serializable {

	private static final long serialVersionUID = 1L;

	@Autowired
	private OrderService orderService;
	@Autowired
	private AddressService addressService;
	@Autowired
	private CartService  cartService; 
	
	@RequestMapping("/goorderindex")
	public ModelAndView goOrderIndex(ModelAndView modelAndView) {
		modelAndView.setViewName("order/order_index");
		return modelAndView;
	}
	
	@RequestMapping("/goorder")
	public ModelAndView goOrder(ModelAndView modelAndView) {
		modelAndView.setViewName("order/checkout");
		return modelAndView;
	}
	
	@RequestMapping("/gofindaddressLook")
	@ResponseBody
	public List<AdressLook> goFindAddressLook(HttpServletRequest request){
		
		return addressService.findAllByUserId(request);
	}
	
	@RequestMapping("/gofindcartLook")
	@ResponseBody
	public List<CartDetail> goFindCartLook(HttpServletRequest request){
		
		return cartService.findCartByUserId(request);
	}
	
	
	
	
	
	
}
