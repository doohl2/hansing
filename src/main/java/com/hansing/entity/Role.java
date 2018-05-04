package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Role {
	@Id
	private String id;
	private String description;
	
	public Role() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Role(String id, String description) {
		super();
		this.id = id;
		this.description = description;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", description=" + description + "]";
	}
	
	
}
