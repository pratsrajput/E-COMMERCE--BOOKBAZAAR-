package com.bookbazaar.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Category 
{
	@Id
	private String categoryname;
	private String categorydescription;
	
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public String getCategorydescription() {
		return categorydescription;
	}
	public void setCategorydescription(String categorydescription) {
		this.categorydescription = categorydescription;
	}
	

}
