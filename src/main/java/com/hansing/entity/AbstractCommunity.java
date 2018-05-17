	
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
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.springframework.lang.Nullable;

@MappedSuperclass
public class AbstractCommunity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;	
	@Column(insertable=false, updatable=false) 
	private Integer hit;
	@Column(insertable=false)
	private Date regDate;
	@Column(insertable=false)
	private String communityTypeName;
	@Column(insertable=false)
	private String memberId;
	
	@Transient
	private List<CommunityComment> communityComments;
	@Transient
	private List<CommunityImg> communityImgs;
	@Transient
	private CommunityType communityType;
	@Transient
	private Member member;
	
	public AbstractCommunity() {
		// TODO Auto-generated constructor stub
	}

	public AbstractCommunity(int id, String title, String content, Date regDate, String memberId) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.memberId = memberId;
	}

	public AbstractCommunity(int id, String title, String content, int hit, Date regDate, String communityTypeName,
			String memberId, List<CommunityComment> communityComments, List<CommunityImg> communityImgs,
			CommunityType communityType, Member member) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.hit = hit;
		this.regDate = regDate;
		this.communityTypeName = communityTypeName;
		this.memberId = memberId;
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

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
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
		return "Community [id=" + id + ", title=" + title + ", content=" + content + ", hit=" + hit + ", regDate="
				+ regDate + ", communityTypeName=" + communityTypeName + ", memberId=" + memberId
				+ ", communityComments=" + communityComments + ", communityImgs=" + communityImgs + ", communityType="
				+ communityType + ", member=" + member + "]";
	}

	
	
}
