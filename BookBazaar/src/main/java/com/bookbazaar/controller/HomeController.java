package com.bookbazaar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.UserDAO;


@Controller
public class HomeController 
{
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("index");
	}
	
	@RequestMapping("/index")
	public ModelAndView index1()
	{
		return new ModelAndView("index");
	}

	@RequestMapping("/login")
	public ModelAndView login()
	{
		return new ModelAndView("Login");
	}

	@RequestMapping("/Registration")
	public ModelAndView register()
	{
		return new ModelAndView("Registration");
	}
	
	/*@RequestMapping("/userregistration")
	public ModelAndView registeruser(@ModelAttribute User user)
	{
		user.setRole("ROLE_USER");
		userDAO.saveUser(user);
		return new ModelAndView("success");
	}
*/
	@RequestMapping("/Cart")
	public ModelAndView cart()
	{
		return new ModelAndView("Cart");
	}
	
	@RequestMapping("/Contact")
	public ModelAndView Contact()
	{
		return new ModelAndView("Contact");
	}
 
	@RequestMapping("/loginconfirm")
	public ModelAndView loginconfirm(@RequestParam String username, @RequestParam String password)
	{
		System.out.println("Inside Controller "+username+" "+password);
		boolean x=userDAO.validateUser(username, password);
		if(x==true)
		{
			return new ModelAndView("index");
		}
		else
		{
			return new ModelAndView("error");
		}

}
}
