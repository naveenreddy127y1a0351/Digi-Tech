package com.product.dao;

import java.util.List;

import com.product.model.Product;

public interface ProductDAO {
	public abstract void addProduct(Product prd);
	public abstract List<Product> getProducts();
	public abstract Product getProductById(String pid);
	public abstract void editProduct(Product prd);
}
