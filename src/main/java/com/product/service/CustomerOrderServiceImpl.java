package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.CustomerOrderDao;
import com.product.model.CustomerOrder;
import com.product.model.ProductReview;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;
	
	public List<CustomerOrder> custOrders(String custid) {		
		return customerOrderDao.custOrders(custid);
	}

	public void addProductReview(ProductReview pr) {
		customerOrderDao.addProductReview(pr);		
	}

	
}
