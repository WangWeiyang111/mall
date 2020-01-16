package com.situ.mall.cart.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.mall.cart.domain.Cart;
import com.situ.mall.cart.domain.CartDetail;

@Repository
public interface CartDao {

	Long saveCart(Cart cart);
	
	Cart findById(Long parentId);
	
	void updateCart(Cart cart);
	
	List<CartDetail> findAll();
	
	List<CartDetail> findCartByUserId(Long userId);
	
}
