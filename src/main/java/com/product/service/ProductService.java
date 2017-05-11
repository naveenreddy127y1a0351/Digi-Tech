package com.product.service;

import java.util.List;

import com.product.model.Product;

public interface ProductService {
	public abstract void addProduct(Product prd);
	public abstract List<Product> getProducts();
	public abstract Product getProductById(String pid);
	public abstract void editProduct(Product prd);
}
