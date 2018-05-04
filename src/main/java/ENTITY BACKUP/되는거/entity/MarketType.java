package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MarketType {
	@Id
	private String name;

	public MarketType() {
		// TODO Auto-generated constructor stub
	}
	
	public MarketType(String name) {
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
		return "MarketType [name=" + name + "]";
	}

	
}
