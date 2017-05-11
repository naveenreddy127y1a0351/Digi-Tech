package com.product.service;

import java.util.List;

import com.product.model.Supplier;

public interface SupplierService {
	public abstract void addSupplier(Supplier sup);
	public abstract List<Supplier> getSuppliers();
	public abstract void deleteSupplier(String supid);
}
