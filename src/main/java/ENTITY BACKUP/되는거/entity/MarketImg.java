package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MarketImg {
	@Id
	private String name;
	
	private int marketId;

	public MarketImg() {
		// TODO Auto-generated constructor stub
	}

	public MarketImg(String name, int marketId) {
		super();
		this.name = name;
		this.marketId = marketId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMarketId() {
		return marketId;
	}

	public void setMarketId(int marketId) {
		this.marketId = marketId;
	}

	@Override
	public String toString() {
		return "MarketImg [name=" + name + ", marketId=" + marketId + "]";
	}
	
}
