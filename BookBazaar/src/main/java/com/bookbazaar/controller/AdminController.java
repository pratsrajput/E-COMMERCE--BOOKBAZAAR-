package com.bookbazaar.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.ProductDAO;
import com.bookbazaar.model.Product;
import com.google.gson.Gson;

@Controller
public class AdminController {

	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv=new ModelAndView("adminhome");
	    return mv; 
	}
	@RequestMapping("/adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView("adminlogin");
	    return mv; 
	}
	
	@RequestMapping("/addproduct")
	public ModelAndView addpage()
	{
		ModelAndView mv=new ModelAndView("addproduct","command",new Product());
	    return mv; 
	}
	
	@RequestMapping("/viewproduct")
	public ModelAndView viewpage()
	{
		ModelAndView mv=new ModelAndView("viewproduct");
		List<Product> list=productDAO.getAllProductsData();
		mv.addObject("productlist", list);
	    return mv; 
	}
	
	@RequestMapping("/saveproduct")
	public ModelAndView savepage(@ModelAttribute Product product)
	{
		productDAO.saveProduct(product);
		return new ModelAndView("redirect:/viewproduct");
	}
	
	@RequestMapping("/deleteproduct/{productid}")
	public ModelAndView deleteproduct(@PathVariable String productid)
	{
		Product product=productDAO.getProductById(productid);
		productDAO.deleteProduct(product);
		return new ModelAndView("redirect:/viewproduct");
	}
	
	@RequestMapping("/editproduct/{productid}")
	public ModelAndView editproduct(@PathVariable String productid)
	{
		Product product=productDAO.getProductById(productid);
		return new ModelAndView("editproduct","command",product);
	}
	@RequestMapping("/editsave")
	public ModelAndView editsave(@ModelAttribute Product product)
	{
		productDAO.updateProduct(product);
		return new ModelAndView("redirect:/viewproduct");
	}
}
