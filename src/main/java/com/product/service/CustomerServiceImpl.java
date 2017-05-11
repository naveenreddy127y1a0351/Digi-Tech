package com.product.service;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.CustomerDAO;
import com.product.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDao;
	
	public String addCustomer(Customer cust) {		
		return customerDao.addCustomer(cust);
	}

	public Customer getCustomerByUserId(String userid) {	
		return customerDao.getCustomerByUserId(userid);
	}

}
