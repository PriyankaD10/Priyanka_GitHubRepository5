package controller;
import org.springframework.stereotype.Controller;
import org.springframework.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.*;
import org.springframework.web.servlet.*;
import java.util.*;
import model.Product;

import model.ProductDAOImplement;
import service.ProductService;
 
@Controller
public class ModelController {

	List<Product> productlist;
	
	@Autowired
	ProductService p;
		@RequestMapping("/modelpage")
		public ModelAndView getMessage(HttpServletRequest request, HttpServletResponse response) {
			
			ModelAndView model= new ModelAndView("home");
			model.addObject("welcome","Hey! you are welcome ");
				return model;
		}
		
		@RequestMapping("/Greetings")
		public ModelAndView getProductDetailsGreetings(HttpServletRequest request, HttpServletResponse response) {
			
			productlist=p.searchAll();
			
			ModelAndView model= new ModelAndView("Greetings");
			model.addObject("ProductData",productlist);
			return model;
		}
		
		@RequestMapping("/Gifts")
		public ModelAndView getProductDetailsGifts(HttpServletRequest request, HttpServletResponse response) {
			
			productlist=p.searchAll();
			
			ModelAndView model= new ModelAndView("Gifts");
			model.addObject("ProductData",productlist);
			return model;
		}
		
		@RequestMapping("/Flowers")
		public ModelAndView getProductDetailsFlowers(HttpServletRequest request, HttpServletResponse response) {
			
			productlist=p.searchAll();
			
			ModelAndView model= new ModelAndView("Flowers");
			model.addObject("ProductData",productlist);
			return model;
		}
}
