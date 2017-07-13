package com.bookbazaar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.CategoryDAO;
import com.bookbazaar.model.Category;
import com.google.gson.Gson;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("category")
	public ModelAndView category()
	{
		ModelAndView mv=new ModelAndView("category");
		 List<Category> list=categoryDAO.getAllCategoryData();
	 
	  Gson g=new Gson();
	  String json=g.toJson(list);
	  System.out.println(" JSON DATA OF CATEGORY"+json);
	  mv.addObject("list", json);
	  return new ModelAndView("category");	
	
	  
	}

}
