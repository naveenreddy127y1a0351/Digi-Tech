package com.product.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Customer implements Serializable{

	@Id
	private String customerid;
	private String custname;
	private String custemailid;
	private String custmobileno;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="userid")
	private UserDetails1 userDetails1;	
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="billingaddressid")
	private BillingAddress billingAddress;

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shippingaddressid")
	private ShippingAddress shippingAddress;

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cartid")
	private Cart cart;

	@OneToMany(mappedBy="customer", cascade=CascadeType.REFRESH, fetch=FetchType.LAZY)
	private List<CustomerOrder> customerOrders;
	
	public String getCustomerid() {
		return customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public String getCustname() {
		return custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getCustemailid() {
		return custemailid;
	}

	public void setCustemailid(String custemailid) {
		this.custemailid = custemailid;
	}

	public String getCustmobileno() {
		return custmobileno;
	}

	public void setCustmobileno(String custmobileno) {
		this.custmobileno = custmobileno;
	}

	public UserDetails1 getUserDetails1() {
		return userDetails1;
	}

	public void setUserDetails1(UserDetails1 userDetails1) {
		this.userDetails1 = userDetails1;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public List<CustomerOrder> getCustomerOrders() {
		return customerOrders;
	}

	public void setCustomerOrders(List<CustomerOrder> customerOrders) {
		this.customerOrders = customerOrders;
	}



	

	
}
