package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class StoreImg {
	@Id
	private String name;
	
	private int storeId;

	public StoreImg() {
		// TODO Auto-generated constructor stub
	}

	public StoreImg(String name, int storeId) {
		super();
		this.name = name;
		this.storeId = storeId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStoreId() {
		return storeId;
	}

	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}

	@Override
	public String toString() {
		return "StoreImg [name=" + name + ", storeId=" + storeId + "]";
	}
	
}
