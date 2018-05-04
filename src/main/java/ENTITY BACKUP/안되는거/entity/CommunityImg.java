package com.hansing.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CommunityImg {

	@Id
	private String name;
	
	@ManyToOne(cascade={CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="communityId")
	private Community community;
	
	
	public CommunityImg() {
		// TODO Auto-generated constructor stub
	}
	
	public CommunityImg(String name, Community community) {
		super();
		this.name = name;
		this.community = community;
	}

	public Community getCommunity() {
		return community;
	}

	public void setCommunity(Community community) {
		this.community = community;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "CommunityImg [name=" + name + ", community=" + community + "]";
	}
	
}
