package com.hansing.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class MarketComment {
	@Id
	private int id;
	@Column(insertable=false)
	private Date regDate;
	private String content;
	private int marketId;
	private String memberId;
	
	@Transient
	private Market market;
	
	@Transient
	private Member member;
	
	public MarketComment() {
		// TODO Auto-generated constructor stub
	}

	public MarketComment(int id, Date regDate, String content, int marketId, String memberId, Market market,
			Member member) {
		super();
		this.id = id;
		this.regDate = regDate;
		this.content = content;
		this.marketId = marketId;
		this.memberId = memberId;
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

	public int getMarketId() {
		return marketId;
	}

	public void setMarketId(int marketId) {
		this.marketId = marketId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
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
		return "MarketComment [id=" + id + ", regDate=" + regDate + ", content=" + content + ", marketId=" + marketId
				+ ", memberId=" + memberId + ", market=" + market + ", member=" + member + "]";
	}

}
