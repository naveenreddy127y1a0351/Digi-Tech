package com.product.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Supplier {

	@Id
	private String supplierid;
	private String suppliername;
	private String supplierdesc;
	private boolean issupplieravailable;
	public String getSupplierid() {
		return supplierid;
	}
	public void setSupplierid(String supplierid) {
		this.supplierid = supplierid;
	}
	public String getSuppliername() {
		return suppliername;
	}
	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}
	public String getSupplierdesc() {
		return supplierdesc;
	}
	public void setSupplierdesc(String supplierdesc) {
		this.supplierdesc = supplierdesc;
	}
	public boolean isIssupplieravailable() {
		return issupplieravailable;
	}
	public void setIssupplieravailable(boolean issupplieravailable) {
		this.issupplieravailable = issupplieravailable;
	}	
	
}