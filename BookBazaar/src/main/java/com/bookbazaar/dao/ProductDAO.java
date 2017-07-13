package com.bookbazaar.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookbazaar.model.Product;

@Repository
public class ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	} 
	
	public List<Product> getAllProductsData()
	{
		Session sess=getSession();
		Query q=sess.createQuery("from Product");
		List<Product> l=q.list();
		return l;
		
	}
	
	public Product getProductById(String productid)
	{
		Session sess=getSession();
	    Product product=(Product)sess.get(Product.class, productid);
	    return product;
	        
	}
	
	public void saveProduct(Product product)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(product);
		tx.commit();
		sess.close();
		
	}
	
	public void deleteProduct(Product product)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.delete(product);
		tx.commit();
		sess.close();
		
	}
	
	public void updateProduct(Product product)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.update(product);
		tx.commit();
		sess.close();
		
	}
	
}
