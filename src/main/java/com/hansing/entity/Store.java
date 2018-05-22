package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Store {
	@Id
	private int id;
	private String name;
	private String siteUrl;
	private String type;
	private String intro;
	private boolean adv;
	private String storeTypeName;
	private String memberId;
	
	@Transient
	private StoreType storeType;
	
	@Transient
	private Member member;
	
	@Transient
	private List<StoreImg> storeImgs;
	
	public Store() {
		// TODO Auto-generated constructor stub
	}

	public Store(int id, String name, String siteUrl, String type, String intro, boolean adv, String storeTypeName,
			String memberId, StoreType storeType, Member member, List<StoreImg> storeImgs) {
		super();
		this.id = id;
		this.name = name;
		this.siteUrl = siteUrl;
		this.type = type;
		this.intro = intro;
		this.adv = adv;
		this.storeTypeName = storeTypeName;
		this.memberId = memberId;
		this.storeType = storeType;
		this.member = member;
		this.storeImgs = storeImgs;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSiteUrl() {
		return siteUrl;
	}

	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public boolean isAdv() {
		return adv;
	}

	public void setAdv(boolean adv) {
		this.adv = adv;
	}

	public String getStoreTypeName() {
		return storeTypeName;
	}

	public void setStoreTypeName(String storeTypeName) {
		this.storeTypeName = storeTypeName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public StoreType getStoreType() {
		return storeType;
	}

	public void setStoreType(StoreType storeType) {
		this.storeType = storeType;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public List<StoreImg> getStoreImgs() {
		return storeImgs;
	}

	public void setStoreImgs(List<StoreImg> storeImgs) {
		this.storeImgs = storeImgs;
	}

	@Override
	public String toString() {
		return "Store [id=" + id + ", name=" + name + ", siteUrl=" + siteUrl + ", type=" + type + ", intro=" + intro
				+ ", adv=" + adv + ", storeTypeName=" + storeTypeName + ", memberId=" + memberId + ", storeType="
				+ storeType + ", member=" + member + ", storeImgs=" + storeImgs + "]";
	}

}
