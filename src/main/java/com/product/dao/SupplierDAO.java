package com.product.dao;

import java.util.List;

import com.product.model.Supplier;

public interface SupplierDAO {

	public abstract void addSupplier(Supplier sup);
	public abstract List<Supplier> getSuppliers();
	public abstract void deleteSupplier(String supid);
}
