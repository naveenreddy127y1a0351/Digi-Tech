package com.product.dao;

import com.product.model.Customer;

public interface CustomerDAO {

	public abstract String addCustomer(Customer cust);
	public abstract Customer getCustomerByUserId(String userid);
}
