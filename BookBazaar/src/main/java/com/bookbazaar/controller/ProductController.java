package com.bookbazaar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.ProductDAO;
import com.bookbazaar.model.Product;
import com.google.gson.Gson;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("product")
	public ModelAndView product()
	{
		ModelAndView mv=new ModelAndView("product");
	 List<Product> list=productDAO.getAllProductsData();
	 
	  Gson g=new Gson();
	  String json=g.toJson(list);
	  System.out.println(" JSON DATA OF PRODUCT"+json);
	  mv.addObject("list", json);
	  return new ModelAndView("product");	
	
	  
	}

}
