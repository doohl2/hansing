package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RoomSize {	
	@Id
	private String name;
	
	public RoomSize() {
		// TODO Auto-generated constructor stub
	}

	public RoomSize(String name) {
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
		return "RoomSize [name=" + name + "]";
	}
	
}
