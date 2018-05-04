
package com.hansing.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Community {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	private String writerId;
	private String img;
	private Date regDate;
	
	private String communityTypeName;
	private String memberId;
	
	public Community() {
		// TODO Auto-generated constructor stub
	}

	public Community(int id, String title, String content, String writerId, String img, Date regDate,
			String communityTypeName, String memberId) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.writerId = writerId;
		this.img = img;
		this.regDate = regDate;
		this.communityTypeName = communityTypeName;
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

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getCommunityTypeName() {
		return communityTypeName;
	}

	public void setCommunityTypeName(String communityTypeName) {
		this.communityTypeName = communityTypeName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "Community [id=" + id + ", title=" + title + ", content=" + content + ", writerId=" + writerId + ", img="
				+ img + ", regDate=" + regDate + ", communityTypeName=" + communityTypeName + ", memberId=" + memberId
				+ "]";
	}
	
	
}
