package com.bookbazaar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.SupplierDAO;
import com.bookbazaar.model.Supplier;
import com.google.gson.Gson;

@Controller
public class SupplierController
{
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("supplier")
	public ModelAndView supplier()
	{
		ModelAndView mv=new ModelAndView("supplier");
		 List<Supplier> list=supplierDAO.getAllSupplierData();
	 
	  Gson g=new Gson();
	  String json=g.toJson(list);
	  System.out.println(" JSON DATA OF Supplier"+json);
	  mv.addObject("list", json);
	  return new ModelAndView("supplier");	
	
	  
	}

}
