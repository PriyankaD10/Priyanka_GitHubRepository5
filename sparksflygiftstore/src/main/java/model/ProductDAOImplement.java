package model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductDAOImplement {

	private static final Logger logger = LoggerFactory.getLogger(ProductDAOImplement.class);
	 

	@Autowired
	SessionFactory sf;	
	
	public ProductDAOImplement()
	{
		
	}
	
	public void insert(Product p) {
		sf.getCurrentSession().persist(p);
		logger.info("Person saved successfully, Product Details="+p);
		
	}

	public void update(Product p) {
		sf.getCurrentSession().update(p);
		logger.info("Person saved successfully, Product Details="+p);
		
	}

	public List<Product> searchAll() {
		List<Product> productList=new ArrayList();
		Session session= sf.getCurrentSession();
		logger.info("Person saved successfully, Product Details");		
		productList=session.createQuery(" from Product").list();
		for(Product p : productList){
            logger.info("Product List::"+p);
        }
		return productList;
				
	}

	public Product search(int productid) {
		
		return (Product) sf.getCurrentSession().get(Product.class, productid);
	}

	public void delete(int productid) {
	Session session=sf.getCurrentSession();
	Product p=(Product)session.get(Product.class,productid);
	if(p!=null){
		session.delete(p);
		
	}
		
	}

}

