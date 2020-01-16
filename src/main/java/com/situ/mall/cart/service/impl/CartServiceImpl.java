package com.situ.mall.cart.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.cart.dao.CartDao;
import com.situ.mall.cart.domain.Cart;
import com.situ.mall.cart.domain.CartDetail;
import com.situ.mall.cart.service.CartService;
import com.situ.mall.product.dao.ProductDao;
import com.situ.mall.product.domain.Product;
import com.situ.mall.user.domain.User;
@Service
public class CartServiceImpl implements Serializable, CartService {

	private static final long serialVersionUID = 1L;
	
    @Autowired
    private ProductDao productDao;
	
    @Autowired
    private CartDao cartDao; 
    
	@Override
	public Long saveCart(HttpServletRequest request, Long productId1) {
		Long account = 0L;
		Long totalPrice = 0L;
		Product product = productDao.get(productId1);
		Long productId = product.getRowId();
		Long productPrice = Long.parseLong(product.getProductPrice());
		Cart cart = new Cart();
		HttpSession session = request.getSession();
		User userSession = (User)session.getAttribute("userSession");
		if(userSession!=null) {
			Long userId = userSession.getRowId();
			Cart cartById = cartDao.findById(productId);
			if(cartById!=null) {
				cart.setRowId(cartById.getRowId());
				cart.setUserId(userId);
				cart.setProductId(productId);
				account = cartById.getAccount();
				totalPrice = cartById.getTotalPrice();
				Long account1 = account+1;
				cart.setAccount(account1);
				Long totalPrice1 = totalPrice + productPrice;
				cart.setTotalPrice(totalPrice1);
				cartDao.updateCart(cart);
			}else {
				cart.setUserId(userId);
				cart.setProductId(productId);
				cart.setAccount(1L);
				cart.setTotalPrice(Long.parseLong(product.getProductPrice()));
				cartDao.saveCart(cart);
			}
		}else {
			System.out.println("您未登录，请登录");
		}
		
		return 1L;
	}

	@Override
	public List<CartDetail> findAll() {
		
		return cartDao.findAll();
	}

	@Override
	public List<CartDetail> findCartByUserId(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User userSession = (User)session.getAttribute("userSession");
		Long userId = userSession.getRowId();
		return cartDao.findCartByUserId(userId);
	}

	

}
