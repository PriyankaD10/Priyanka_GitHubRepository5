package service;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.Product;
import model.ProductDAOImplement;
import model.User;
import model.UserDAOImplement;

@Transactional
@Service
public class UserService {

	
	public UserService() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	 UserDAOImplement userdao;

	
	public void insert(User u) {
		userdao.insert(u);
		
	}
	
	public void update(User u) {
		userdao.update(u);
		
	}
	
	public List searchAll() {
		
		return userdao.searchAll();
	}
	
	public  User search(int userid) {
		// TODO Auto-generated method stub
		return userdao.search(userid);
	}
	
	public void delete(int userid) {
		userdao.delete(userid);
		
	}
	
}
