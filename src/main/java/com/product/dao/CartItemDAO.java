package com.product.dao;

import com.product.model.Cart;
import com.product.model.CartItem;

public interface CartItemDAO {
	public abstract void addCartItem(CartItem cartItem);
	public abstract CartItem getCartItem(String cartItemId);
	public abstract void removeCartItem(String cartItemId);
	public abstract void removeAllCartItems(String customerid);
}
