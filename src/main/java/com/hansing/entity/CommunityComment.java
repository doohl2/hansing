package com.hansing.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class CommunityComment {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(insertable=false)
	private Date regDate;
	private String content;
	private int communityId;
	private String memberId;
	
	@Transient
	private Community community;
	
	@Transient
	private Member member;
	
	
	public CommunityComment() {
		// TODO Auto-generated constructor stub
	}


	public CommunityComment(int id, Date regDate, String content, int communityId, String memberId, Community community,
			Member member) {
		super();
		this.id = id;
		this.regDate = regDate;
		this.content = content;
		this.communityId = communityId;
		this.memberId = memberId;
		this.community = community;
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


	public int getCommunityId() {
		return communityId;
	}


	public void setCommunityId(int communityId) {
		this.communityId = communityId;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public Community getCommunity() {
		return community;
	}


	public void setCommunity(Community community) {
		this.community = community;
	}


	public Member getMember() {
		return member;
	}


	public void setMember(Member member) {
		this.member = member;
	}


	@Override
	public String toString() {
		return "CommunityComment [id=" + id + ", regDate=" + regDate + ", content=" + content + ", communityId="
				+ communityId + ", memberId=" + memberId + ", community=" + community + ", member=" + member + "]";
	}

}
