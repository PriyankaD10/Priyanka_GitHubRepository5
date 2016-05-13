package controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import model.Product;
import service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	 ProductService productService;
	/*	@Autowired(required=true)
		@Qualifier(value="productService")
		public void setProductService(ProductService ps){
		
			this.productService=ps;
		 
		
		}*/

	@RequestMapping(value = "/Product", method = RequestMethod.GET)
    public String listProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("listProduct", this.productService.searchAll());
        return "Product";
    }

	

	@RequestMapping(value = "/ProductDetails", method = RequestMethod.GET)
    public String listProductforUser(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("listProduct", this.productService.searchAll());
        return "ProductDetails";
    }

	
	/*@RequestMapping("/ProductDetails")
	public ModelAndView getProductDetailsGreetings() {
		List <Product> productlist=this.productService.searchAll();
		if(!productlist.isEmpty()){
			System.out.println("Saved");
		}
		ModelAndView model= new ModelAndView("ProductDetails");
		model.addObject("listProduct",this.productService.searchAll());
		System.out.println("Saved");
		return model;
	}*/
	
	
	
	
	
	
	 @RequestMapping( method =RequestMethod.POST, value= "Product/add")
	    public String addProduct(@ModelAttribute("product") Product p ,HttpServletRequest request, HttpServletResponse response){
		 	
	        if(p.getId() == 0){
	            //new person, add it
	            this.productService.insert(p);
	        }else{
	            //existing person, call update
	        		this.productService.update(p);
	        }
	        
	        	       
	        
	         
	        return "redirect:/Product";
	         
	    }
	
	 
	 	@RequestMapping("ProductDetails/{id}")
	 	public String getProductDetailsInfo(@PathVariable("id") int id, Model model){
		
	 		model.addAttribute("selectedproduct",this.productService.search(id));
	 		return "ProductDetailsInfo";
	 	}
	 
	 
	    @RequestMapping("/remove/{id}")
	    public String removeProduct(@PathVariable("id") int id){
	         
	        this.productService.delete(id);
	        return "redirect:/Product";
	    }
	  
	    @RequestMapping("/edit/{id}")
	    public String editPerson(@PathVariable("id") int id, Model model){
	        model.addAttribute("product", this.productService.search(id));
	        model.addAttribute("listProduct", this.productService.searchAll());
	        return "Product";
	    }

}
