package com.product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.CartItemDAO;
import com.product.model.Cart;
import com.product.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDAO cartitemdao;
	
	public void addCartItem(CartItem cartItem) {
		cartitemdao.addCartItem(cartItem);
	}

	public CartItem getCartItem(String cartItemId) {
		// TODO Auto-generated method stub
		return cartitemdao.getCartItem(cartItemId);
	}

	public void removeCartItem(String cartItemId) {
		cartitemdao.removeCartItem(cartItemId);
	}

	public void removeAllCartItems(String customerid) {
		cartitemdao.removeAllCartItems(customerid);
	}

}
