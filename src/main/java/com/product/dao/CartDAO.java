package com.product.dao;

import com.product.model.Cart;

public interface CartDAO {
	public abstract Cart getCart(String cartid); 
	public abstract int getCartSize(Cart cart);
	public abstract void updateCart(Cart cart);
	
	
}
