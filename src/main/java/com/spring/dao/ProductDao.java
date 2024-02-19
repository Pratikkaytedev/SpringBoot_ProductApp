package com.spring.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//Create
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//Get all products
	public List<Product> getProducts(){
	List<Product> product = this.hibernateTemplate.loadAll(Product.class);
	return product;
	}
	
	
	//Delete by Id
	@Transactional
	public void deleteProduct(int pid) {
		
	Product p=	this.hibernateTemplate.load(Product.class, pid);
	this.hibernateTemplate.delete(p);
	}
	
	// Get by ID
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}
	
	
	
}
