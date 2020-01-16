package com.situ.mall.cart.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.situ.mall.cart.domain.CartDetail;


public interface CartService {

	Long saveCart(HttpServletRequest request,Long productId1);
	
	List<CartDetail> findAll();
	
	List<CartDetail> findCartByUserId(HttpServletRequest request);
}
