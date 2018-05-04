package com.hansing.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class MarketComment {
	@Id
	private int id;
	private Date regDate;
	private String content;
	
	@ManyToOne(cascade={CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="marketId")
	private Market market;
	
	@ManyToOne(cascade={CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="memberId")
	private Member member;
	
	public MarketComment() {
		// TODO Auto-generated constructor stub
	}

	public MarketComment(int id, Date regDate, String content, Market market, Member member) {
		super();
		this.id = id;
		this.regDate = regDate;
		this.content = content;
		this.market = market;
		this.member = member;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	public Market getMarket() {
		return market;
	}

	public void setMarket(Market market) {
		this.market = market;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "MarketComment [id=" + id + ", regDate=" + regDate + ", content=" + content + ", market=" + market
				+ ", member=" + member + "]";
	}

	
}
