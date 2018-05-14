package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class StoreType {
	@Id
	private String name;
	
//	@OneToMany(mappedBy="storeType",	cascade=CascadeType.ALL)
	@Transient
	private List<Store> stores;
	
	public StoreType() {
		// TODO Auto-generated constructor stub
	}

	public StoreType(String name, List<Store> stores) {
		super();
		this.name = name;
		this.stores = stores;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Store> getStore() {
		return stores;
	}

	public void setStore(List<Store> stores) {
		this.stores = stores;
	}

	@Override
	public String toString() {
		return "StoreType [name=" + name + ", stores=" + stores + "]";
	}

}
