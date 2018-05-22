package com.hansing.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class StoreImg {
	@Id
	private String name;
	private int storeId;
	
	@Transient
	private Store store;

	public StoreImg() {
		// TODO Auto-generated constructor stub
	}

	public StoreImg(String name, int storeId, Store store) {
		super();
		this.name = name;
		this.storeId = storeId;
		this.store = store;
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

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	@Override
	public String toString() {
		return "StoreImg [name=" + name + ", storeId=" + storeId + ", store=" + store + "]";
	}

}
