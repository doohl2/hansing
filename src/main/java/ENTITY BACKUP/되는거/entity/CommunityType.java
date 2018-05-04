package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CommunityType {

	@Id
	private String name;
	
	public CommunityType() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "CommunityType [name=" + name + "]";
	}
	
	
}
