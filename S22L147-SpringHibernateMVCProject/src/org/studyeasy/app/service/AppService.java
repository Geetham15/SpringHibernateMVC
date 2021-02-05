package org.studyeasy.app.service;

import java.util.List;

import org.studyeasy.app.entity.Product;

public interface AppService {

	List<Product> getProducts();

	void addProduct(Product product);

	Product getProduct(int id);

	void deleteProduct(int id);
} 


