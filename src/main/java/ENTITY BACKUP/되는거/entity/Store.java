package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

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
	
	public Store() {
		// TODO Auto-generated constructor stub
	}



	public boolean isAdv() {
		return adv;
	}



	public void setAdv(boolean adv) {
		this.adv = adv;
	}



	public Store(int id, String name, String siteUrl, String type, String intro, boolean adv, String storeTypeName,
			String memberId) {
		super();
		this.id = id;
		this.name = name;
		this.siteUrl = siteUrl;
		this.type = type;
		this.intro = intro;
		this.adv = adv;
		this.storeTypeName = storeTypeName;
		this.memberId = memberId;
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

	@Override
	public String toString() {
		return "Store [id=" + id + ", name=" + name + ", siteUrl=" + siteUrl + ", type=" + type + ", intro=" + intro
				+ ", adv=" + adv + ", storeTypeName=" + storeTypeName + ", memberId=" + memberId + "]";
	}


	
	
}
