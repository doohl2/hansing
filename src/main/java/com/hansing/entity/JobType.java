package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class JobType {
	@Id
	private String name;
	
	public JobType() {
		// TODO Auto-generated constructor stub
	}

	public JobType(String name) {
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
		return "JobType [name=" + name + "]";
	}
	
}
