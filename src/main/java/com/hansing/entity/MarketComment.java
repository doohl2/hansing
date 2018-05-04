package com.hansing.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MarketComment {
	@Id
	private int id;
	private Date regDate;
	private String content;
	
	private int marketId;
	private String memberId;
	
	public MarketComment() {
		// TODO Auto-generated constructor stub
	}

	public MarketComment(int id, Date regDate, String content, int marketId, String memberId) {
		super();
		this.id = id;
		this.regDate = regDate;
		this.content = content;
		this.marketId = marketId;
		this.memberId = memberId;
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

	@Override
	public String toString() {
		return "MarketComment [id=" + id + ", regDate=" + regDate + ", content=" + content + ", marketId=" + marketId
				+ ", memberId=" + memberId + "]";
	}
	
}
