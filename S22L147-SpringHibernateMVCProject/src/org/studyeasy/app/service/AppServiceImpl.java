package org.studyeasy.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.studyeasy.app.DAO.ProductDAO;
import org.studyeasy.app.entity.Product;

@Service
public class AppServiceImpl implements AppService {
	@Autowired
	private ProductDAO productDAO;
	
	@Transactional
	@Override
	public List<Product> getProducts() {		
		return productDAO.getProducts();
	}
	@Transactional
	@Override
	public void addProduct(Product product) {
		productDAO.addProduct(product);
		
	}
	@Transactional
	@Override
	public Product getProduct(int id) {
		return productDAO.getProduct(id);
	}
	@Transactional
	@Override
	public void deleteProduct(int id) {
		productDAO.deleteProduct(id);
		
	}

}
