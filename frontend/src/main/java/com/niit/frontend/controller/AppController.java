package com.niit.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.backend1.dao.ProductDao;
import com.niit.backend1.model.Product;

@Controller
public class AppController {

	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView view = new ModelAndView("index");
		return view;
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView view = new ModelAndView("register");
		return view;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error, @RequestParam(value = "logout", required = false) String logout) {
		ModelAndView view = new ModelAndView("login");
		if (error != null) {
			view.addObject("error", error);
		}
		if (logout != null) {
			view.addObject("message", "You logged out successfully!");
		}
		return view;
	}
	

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String productAdmin(Model model) {
	
		List<Product> products =  productDao.list();
		System.out.println("hhhhhhhhhhhhh");
		String listproducts = new Gson().toJson(products);
		System.out.println("hhhhhhhh"+ productDao.list().size());
		for(Product p: products)
		{
			System.out.println("ppppppppppp"+p.getProductId());
			
		}
		model.addAttribute("listproducts",listproducts);
		return "products";

	}	
		
	
	@RequestMapping("/productDetails/{productId}")
	public String ProductDetails(@PathVariable("productId") int productId, Model model) {

		Product products = productDao.getById(productId);
		System.out.println("deailss");
		model.addAttribute("product", products);
		return "productDetails";

	}

}
