package controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.security.Principal;

import org.springframework.*;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.*;

import model.User;

@Controller
public class HomeController {
	
	 
	@RequestMapping("/")
	public String showMessage() {
			return "LandingPage";
	}
	 
		@RequestMapping("/Register")
		public String showRegisterMessage(Model model) {
			model.addAttribute("user", new User());
				return "Register";
		}
		
		@RequestMapping("/AboutUs")
		public String showAboutUsMessage() {
				return "AboutUs";
		}
		
		@RequestMapping("/TermAndCondition")
		public String showTermsAndConditionMessage() {
				return "Terms";
		}
		
		@RequestMapping("/LandingPage")
		public String showGreetingsMessage() {
				return "LandingPage";
		}
		
		@RequestMapping("/SignIn")
		public String showEnterProductsMessage() {
				return "SignIn";
		}
		
		@RequestMapping("/uploadImage")
		public String showImageUploadForm() {
				return "ImageUploadForm";
		}
		
		@RequestMapping("/RegisterSuccessful")
		public String showRegisterSuccessful() {
				return "RegisterSuccessful";
		}
		
		
		
		
		@RequestMapping("/ContactUs")
		public String showGreetings() {
			
			
				return "ContactUs";
		}
		
		
		
		 @RequestMapping(value = "/403", method = RequestMethod.GET)
		    public String accessDenied(Model model, Principal principal) {
		         
		        if (principal != null) {
		            model.addAttribute("message", "Hi " + principal.getName()
		                    + "<br> You do not have permission to access this page!");
		        } else {
		            model.addAttribute("msg",
		                    "You do not have permission to access this page!");
		        }
		        return "403Page";
		    }

}
