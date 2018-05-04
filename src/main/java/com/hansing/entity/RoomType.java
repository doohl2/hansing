package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RoomType {
	@Id
	private String name;

	public RoomType() {
		// TODO Auto-generated constructor stub
	}

	public RoomType(String name) {
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
		return "RoomType [name=" + name + "]";
	}
	
}
