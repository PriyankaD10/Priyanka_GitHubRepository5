package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import model.User;
import service.ProductService;
import service.UserService;

@Controller
public class AdminController {

	
	@Autowired
	 ProductService productService;
	@Autowired
	 UserService userService;
	
	@RequestMapping(value = "/AdminProduct", method = RequestMethod.GET)
    public String listProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("listProduct", this.productService.searchAll());
        return "Product";
    }

	
	
	@RequestMapping(value = "/RegisterUser", method = RequestMethod.POST)
    public String addUser(@Valid @ModelAttribute("user") User user , BindingResult result) {
		
        if(result.hasErrors()){
        	
        	return "Register";
            
        }else{
            //existing person, call update
        	this.userService.insert(user);
        	
        	return "redirect:/RegisterSuccessful";
        }
        
        	       
        
         
      
    }
	/*@RequestMapping(value = "/UserProduct", method = RequestMethod.GET)
    public String listUserProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("listProduct", this.productService.searchAll());
        return "ProductDetails";
    }*/

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String listUserProduct(Model model) {
        
        return "logout";
    }

}
