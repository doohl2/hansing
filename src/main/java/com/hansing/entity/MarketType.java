package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class MarketType {
	@Id
	private String name;

//	@OneToMany(mappedBy="marketType",	cascade=CascadeType.ALL)
	@Transient
	private List<Market> markets;
	
	public MarketType() {
		// TODO Auto-generated constructor stub
	}

	public MarketType(String name, List<Market> markets) {
		super();
		this.name = name;
		this.markets = markets;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Market> getMarkets() {
		return markets;
	}

	public void setMarkets(List<Market> markets) {
		this.markets = markets;
	}

	@Override
	public String toString() {
		return "MarketType [name=" + name + ", markets=" + markets + "]";
	}


	
}
