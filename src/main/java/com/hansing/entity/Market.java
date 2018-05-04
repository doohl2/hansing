package com.hansing.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Market {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	private Date regDate;
	private int price;
	private String contactNo;
	private String mainImg;
	private int hit;
	
	private String marketTypeName;
	private String memberId;
	
	public Market() {
		// TODO Auto-generated constructor stub
	}

	public Market(int id, String title, String content, Date regDate, int price, String contactNo, String mainImg,
			int hit, String marketTypeName, String memberId) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.price = price;
		this.contactNo = contactNo;
		this.mainImg = mainImg;
		this.hit = hit;
		this.marketTypeName = marketTypeName;
		this.memberId = memberId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getMarketTypeName() {
		return marketTypeName;
	}

	public void setMarketTypeName(String marketTypeName) {
		this.marketTypeName = marketTypeName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "Market [id=" + id + ", title=" + title + ", content=" + content + ", regDate=" + regDate + ", price="
				+ price + ", contactNo=" + contactNo + ", mainImg=" + mainImg + ", hit=" + hit + ", marketTypeName="
				+ marketTypeName + ", memberId=" + memberId + "]";
	}
	
}
