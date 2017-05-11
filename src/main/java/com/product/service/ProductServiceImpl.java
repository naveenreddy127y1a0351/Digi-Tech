package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.ProductDAO;
import com.product.model.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDao;
	
	public void addProduct(Product prd) {
		productDao.addProduct(prd);
	}

	public List<Product> getProducts() {
		return productDao.getProducts();
	}

	public Product getProductById(String pid) {
		return productDao.getProductById(pid);
	}

	public void editProduct(Product prd) {
		productDao.editProduct(prd);		
	}	
}
