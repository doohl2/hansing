package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Direction {

	@Id
	private String name;
	
	public Direction() {
		// TODO Auto-generated constructor stub
	}

	public Direction(String name) {
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
		return "Direction [name=" + name + "]";
	}
	
	
}

