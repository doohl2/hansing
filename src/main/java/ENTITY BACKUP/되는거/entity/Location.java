package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Location {
	@Id
	private String name;

	private String directionName;

	public Location() {
		// TODO Auto-generated constructor stub
	}

	public Location(String name, String directionName) {
		super();
		this.name = name;
		this.directionName = directionName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDirectionName() {
		return directionName;
	}

	public void setDirectionName(String directionName) {
		this.directionName = directionName;
	}

	@Override
	public String toString() {
		return "Location [name=" + name + ", directionName=" + directionName + "]";
	}
	
}
