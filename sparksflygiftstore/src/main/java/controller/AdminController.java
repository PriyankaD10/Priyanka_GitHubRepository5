package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import service.ProductService;

@Controller
public class AdminController {

	
	@Autowired
	 ProductService productService;
	
	@RequestMapping(value = "/AdminProduct", method = RequestMethod.GET)
    public String listProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("listProduct", this.productService.searchAll());
        return "Product";
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
