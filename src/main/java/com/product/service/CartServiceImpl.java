package com.product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.CartDAO;
import com.product.model.Cart;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDao;
	
	public Cart getCart(String cartid) {		
		return cartDao.getCart(cartid);
	}

	public int getCartSize(Cart cart) {		
		return cartDao.getCartSize(cart);
	}

	public void updateCart(Cart cart) {
		cartDao.updateCart(cart);		
	}

	
}
