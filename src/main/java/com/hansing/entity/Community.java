	
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
public class Community {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	@Column(insertable=false)
	private String writerId;
	@Column(insertable=false)
	private Date regDate;
	
	@Transient
	private List<CommunityComment> communityComments;
	@Transient
	private List<CommunityImg> communityImgs;
	@Transient
	private CommunityType communityType;
	@Transient
	private Member member;
	
	public Community() {
		// TODO Auto-generated constructor stub
	}

	public Community(String title) {
		this.title = title;
	}

	public Community(int id, String title, String content, String writerId, Date regDate,
			List<CommunityComment> communityComments, List<CommunityImg> communityImgs, CommunityType communityType,
			Member member) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.writerId = writerId;
		this.regDate = regDate;
		this.communityComments = communityComments;
		this.communityImgs = communityImgs;
		this.communityType = communityType;
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

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public List<CommunityComment> getCommunityComments() {
		return communityComments;
	}

	public void setCommunityComments(List<CommunityComment> communityComments) {
		this.communityComments = communityComments;
	}

	public List<CommunityImg> getCommunityImgs() {
		return communityImgs;
	}

	public void setCommunityImgs(List<CommunityImg> communityImgs) {
		this.communityImgs = communityImgs;
	}

	public CommunityType getCommunityType() {
		return communityType;
	}

	public void setCommunityType(CommunityType communityType) {
		this.communityType = communityType;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "Community [id=" + id + ", title=" + title + ", content=" + content + ", writerId=" + writerId + ", regDate=" + regDate + ", communityComments=" + communityComments + ", communityImgs="
				+ communityImgs + ", communityType=" + communityType + ", member=" + member + "]";
	}
	
	
}
