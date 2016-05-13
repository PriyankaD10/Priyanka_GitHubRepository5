package model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserDAOImplement {

	private static final Logger logger = LoggerFactory.getLogger(ProductDAOImplement.class);
	 

	@Autowired
	SessionFactory sf;	
	
	public UserDAOImplement()
	{
		
	}
	
	public void insert(User u) {
		sf.getCurrentSession().persist(u);
		logger.info("User saved successfully, Product Details="+u);
		
	}

	public void update(User u) {
		sf.getCurrentSession().update(u);
		logger.info("User saved successfully, User Details="+u);
		
	}

	public List<User> searchAll() {
		List<User> userlist=new ArrayList();
		Session session= sf.getCurrentSession();
		logger.info("Person saved successfully, User Details");		
		userlist=session.createQuery(" from Users").list();
		for(User user : userlist){
            logger.info("Product List::"+user);
        }
		return userlist;
				
	}

	public User search(int userid) {
		
		return (User) sf.getCurrentSession().get(User.class, userid);
	}

	public void delete(int userid) {
	Session session=sf.getCurrentSession();
	User u=(User)session.get(Product.class,userid);
	if(u!=null){
		session.delete(u);
		
	}
		
	}

}
