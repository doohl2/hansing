package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Role {
	@Id
	private String id;
	private String description;
	
	@OneToMany(mappedBy="role",	cascade=CascadeType.ALL)
	private List<Member> members;
	
	public Role() {
		// TODO Auto-generated constructor stub
	}

	public Role(String id, String description, List<Member> members) {
		super();
		this.id = id;
		this.description = description;
		this.members = members;
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


	public List<Member> getMembers() {
		return members;
	}

	public void setMembers(List<Member> members) {
		this.members = members;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", description=" + description + ", members=" + members + "]";
	}

	
	
}
