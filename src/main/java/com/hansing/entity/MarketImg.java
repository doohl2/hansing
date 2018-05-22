package com.hansing.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;


@Entity
public class MarketImg {
	@Id
	private String name;
	private int marketId;
	
	@Transient
	private Market market;

	public MarketImg() {
		// TODO Auto-generated constructor stub
	}

	public MarketImg(String name, int marketId, Market market) {
		super();
		this.name = name;
		this.marketId = marketId;
		this.market = market;
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

	public Market getMarket() {
		return market;
	}

	public void setMarket(Market market) {
		this.market = market;
	}

	@Override
	public String toString() {
		return "MarketImg [name=" + name + ", marketId=" + marketId + ", market=" + market + "]";
	}

}
