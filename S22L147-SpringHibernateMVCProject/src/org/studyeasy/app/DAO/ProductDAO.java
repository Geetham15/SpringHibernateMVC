package org.studyeasy.app.DAO;

import java.util.List;

import org.studyeasy.app.entity.Product;

public interface ProductDAO {
	
	public List<Product> getProducts();

	public void addProduct(Product product);

	public Product getProduct(int id);

	public void deleteProduct(int id);
}
