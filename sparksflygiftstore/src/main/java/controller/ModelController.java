package controller;
import org.springframework.stereotype.Controller;
import org.springframework.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.*;
import org.springframework.web.servlet.*;

import com.google.gson.Gson;

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
		
		@RequestMapping(value="/ShareProductPost", method=RequestMethod.POST)
		public String shareProduct(HttpServletRequest request, HttpServletResponse response) {
			
			/*productlist=p.searchAll();
			
			ModelAndView model= new ModelAndView("Greetings");
			model.addObject("listProduct",productlist);*/
			return "Done";
		}
		
		/*
		
		@RequestMapping("/Gifts")
		public ModelAndView getProductDetailsGifts(HttpServletRequest request, HttpServletResponse response) {
			
			productlist=p.searchAll();
			
			ModelAndView model= new ModelAndView("Gifts");
			model.addObject("listProduct",productlist);
			return model;
		}
		
		@RequestMapping("/Flowers")
		public ModelAndView getProductDetailsFlowers(HttpServletRequest request, HttpServletResponse response) {
			
			productlist=p.searchAll();
			
			ModelAndView model= new ModelAndView("Flowers");
			model.addObject("listProduct",productlist);
			return model;
		}*/
		
		@RequestMapping("/Test")
		public ModelAndView showTest() {
			

			List<Product> listtojsp=new ArrayList<Product>();
			productlist=p.searchAll();
			String json = new Gson().toJson(productlist);  // converting list into Google Gson object which is a string
			System.out.println(json);
			ModelAndView model=new ModelAndView("Test");
			model.addObject("listProduct",json);
			return model;
			
				
		}
		
		/*@RequestMapping(value="/ProductDetails/{productid}", method=RequestMethod.GET )
		public ModelAndView getProductDetails(@PathVariable(value="productid") String pid) {
			
			String viewname ="ProductDetails_"+pid;
			ModelAndView model= new ModelAndView(viewname);
			model.addObject("productid",pid);
			return model;
		}*/
}
