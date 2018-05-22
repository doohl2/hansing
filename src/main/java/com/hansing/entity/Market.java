package com.hansing.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Market {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	@Column(insertable=false)
	private Date regDate;
	private int price;
	private String contactNo;
	private String mainImg;
	private int hit;
	private String marketTypeName;
	private String memberId;
	
	@Transient
	private List<MarketComment> marketComments;
	
	@Transient
	private List<MarketImg> marketImgs;
	
	@Transient
	private MarketType marketType;
	
	@Transient
	private Member member;
	
	public Market() {
		// TODO Auto-generated constructor stub
	}

	public Market(int id, String title, String content, Date regDate, int price, String contactNo, String mainImg,
			int hit, String marketTypeName, String memberId, List<MarketComment> marketComments,
			List<MarketImg> marketImgs, MarketType marketType, Member member) {
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
		this.marketComments = marketComments;
		this.marketImgs = marketImgs;
		this.marketType = marketType;
		this.member = member;
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

	public List<MarketComment> getMarketComments() {
		return marketComments;
	}

	public void setMarketComments(List<MarketComment> marketComments) {
		this.marketComments = marketComments;
	}

	public List<MarketImg> getMarketImgs() {
		return marketImgs;
	}

	public void setMarketImgs(List<MarketImg> marketImgs) {
		this.marketImgs = marketImgs;
	}

	public MarketType getMarketType() {
		return marketType;
	}

	public void setMarketType(MarketType marketType) {
		this.marketType = marketType;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "Market [id=" + id + ", title=" + title + ", content=" + content + ", regDate=" + regDate + ", price="
				+ price + ", contactNo=" + contactNo + ", mainImg=" + mainImg + ", hit=" + hit + ", marketTypeName="
				+ marketTypeName + ", memberId=" + memberId + ", marketComments=" + marketComments + ", marketImgs="
				+ marketImgs + ", marketType=" + marketType + ", member=" + member + "]";
	}
	
	
}
