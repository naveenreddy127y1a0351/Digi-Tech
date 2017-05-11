package com.product.dao;

import java.util.List;

import com.product.model.Cart;
import com.product.model.CustomerOrder;
import com.product.model.CustomerOrderHistory;
import com.product.model.ProductReview;

public interface CustomerOrderDao {
	public void addCustomerOrder(Cart cart);
	public List<CustomerOrder> custOrders(String custid);
	public void addProductReview(ProductReview pr);
}
