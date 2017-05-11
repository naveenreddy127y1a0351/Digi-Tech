package com.product.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class CustomerOrder implements Serializable {
	
	@Id
	private String orderId;	
	
	@ManyToOne
	@JoinColumn(name="customerid")
	private Customer customer;
	
	@OneToOne
	@JoinColumn(name="billingaddressid")
	private BillingAddress billingAddress;
	
	@OneToOne
	@JoinColumn(name="shippingaddressid")
	private ShippingAddress shippingAddress;
	
	@OneToOne
	@JoinColumn(name="cartid")
	private Cart cart;
	
	@OneToMany(mappedBy="customerOrder1", cascade=CascadeType.REFRESH, fetch=FetchType.EAGER)
	private List<CustomerOrderHistory> customerOrdersHistory;
	
	private Date orderDate;
	
	private String custid;
	
	private String shippedaddress;
	
	public Customer getCustomer() {
	return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
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
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public List<CustomerOrderHistory> getCustomerOrdersHistory() {
		return customerOrdersHistory;
	}
	public void setCustomerOrdersHistory(List<CustomerOrderHistory> customerOrdersHistory) {
		this.customerOrdersHistory = customerOrdersHistory;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getCustid() {
		return custid;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public String getShippedaddress() {
		return shippedaddress;
	}
	public void setShippedaddress(String shippedaddress) {
		this.shippedaddress = shippedaddress;
	}
	
}