package com.situ.mall.cart.cotroller;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.mall.cart.service.CartService;


@Controller
@RequestMapping("/cart")
public class CartController implements Serializable {

	private static final long serialVersionUID = 1L;

	@Autowired
	private CartService cartService;
	
	@RequestMapping("/addcart/{productId1}")
	@ResponseBody
	public Long addCart(HttpServletRequest request,@PathVariable Long productId1) {
		
		return cartService.saveCart(request, productId1);
	}
	
	@RequestMapping("/goCartList")
	public ModelAndView goCartList(ModelAndView  modelAndView,HttpServletRequest request) {
		modelAndView.addObject("cartList", cartService.findCartByUserId(request));
		modelAndView.setViewName("user/cart");
		return modelAndView;
	}
	
	
	
	
	
}
