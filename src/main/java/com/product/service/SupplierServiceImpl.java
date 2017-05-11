package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.SupplierDAO;
import com.product.model.Supplier;

@Service
public class SupplierServiceImpl implements SupplierService {

	@Autowired
	private SupplierDAO supplierDao;	
	
	public List<Supplier> getSuppliers() {
		// TODO Auto-generated method stub
		return supplierDao.getSuppliers();
	}

	public void addSupplier(Supplier sup) {
		supplierDao.addSupplier(sup);
	}

	public void deleteSupplier(String supid) {
		supplierDao.deleteSupplier(supid);		
	}

	
	
}
