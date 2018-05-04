package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CommunityImg {

	@Id
	private String name;
	
	private int communityId;
	
	public CommunityImg() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCommunityId() {
		return communityId;
	}

	public void setCommunityId(int communityId) {
		this.communityId = communityId;
	}

	@Override
	public String toString() {
		return "CommunityImg [name=" + name + ", communityId=" + communityId + "]";
	}
	
}
