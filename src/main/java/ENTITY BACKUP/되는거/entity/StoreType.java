package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class StoreType {
	@Id
	private String name;
	
	public StoreType() {
		// TODO Auto-generated constructor stub
	}

	public StoreType(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "StoreType [name=" + name + "]";
	}
	
}
