package com.product.service;

import java.util.List;

import com.product.model.CustomerOrder;
import com.product.model.ProductReview;

public interface CustomerOrderService {
	public List<CustomerOrder> custOrders(String custid);
	public void addProductReview(ProductReview pr);
}
