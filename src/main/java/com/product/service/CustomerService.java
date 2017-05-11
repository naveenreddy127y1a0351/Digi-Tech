package com.product.service;

import com.product.model.Customer;

public interface CustomerService {
	public abstract String addCustomer(Customer cust);
	public abstract Customer getCustomerByUserId(String userid);
}
