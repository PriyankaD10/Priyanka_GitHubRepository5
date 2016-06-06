package controller;
import org.springframework.stereotype.Controller;
import org.springframework.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.*;
import org.springframework.web.servlet.*;

import com.google.gson.Gson;

import java.util.*;
import model.Product;

import model.ProductDAOImplement;
import service.EmailAPI;
import service.ProductService;
 
@Controller
public class ModelController {

	List<Product> productlist;
	
	@Autowired
	ProductService p;
	
	@Autowired
	private MailSender mailsender;
	
	
	
		@RequestMapping("/modelpage")
		public ModelAndView getMessage(HttpServletRequest request, HttpServletResponse response) {
			
			ModelAndView model= new ModelAndView("home");
			model.addObject("welcome","Hey! you are welcome ");
				return model;
		}
		
		@RequestMapping(value="/ShareProduct", method=RequestMethod.POST)
		public void shareProduct(HttpServletRequest request, HttpServletResponse response) {
			
			//String ConfFile="dispatcher-servlet.xml";
			String toAddr=request.getParameter("exampleInputEmail1");
			String subject=request.getParameter("exampleInputSubject1");
			String body=request.getParameter("exampleInputMessage1");
			String fromAddr = "priyanka.ds10@gmail.com";
			
			System.out.println(toAddr+" "+subject+" "+body);
			//ConfigurableApplicationContext context = new ClassPathXmlApplicationContext(ConfFile);
			 
			// @Service("crunchifyEmail") <-- same annotation you specified in CrunchifyEmailAPI.java
			//EmailAPI crunchifyEmailAPI = (EmailAPI) context.getBean("Email");
			//String toAddr = "test@crunchify.com";
	
	 
			// email subject
			//String subject = "Hey.. This email sent by Crunchify's Spring MVC Tutorial";
	 
			// email body
			//String body = "There you go.. You got an email.. Let's understand details on how Spring MVC works -- By Crunchify Admin";
			SimpleMailMessage email = new SimpleMailMessage();
			email.setFrom(fromAddr);
			email.setTo(toAddr);
			email.setSubject(subject);
			email.setText(body);
			mailsender.send(email);
			//https://www.google.com/settings/security/lesssecureapps
			//crunchifyEmailAPI.readyToSendEmail(toAddr, fromAddr, subject, body);

			//return "ProductDetailsInfo";
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
