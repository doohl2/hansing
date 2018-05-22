package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class CommunityType {

	@Id
	private String name;

	@Transient	
	private List<Community> communities;
	
	public CommunityType() {
		// TODO Auto-generated constructor stub
	}

	public CommunityType(String name, List<Community> communities) {
		super();
		this.name = name;
		this.communities = communities;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Community> getCommunities() {
		return communities;
	}

	public void setCommunities(List<Community> communities) {
		this.communities = communities;
	}

	@Override
	public String toString() {
		return "CommunityType [name=" + name + ", communities=" + communities + "]";
	}

	
}
