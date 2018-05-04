package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Member {
	@Id
	private String id;
	private String pwd;
	private String name;
	private String nickname;
	
	@OneToMany(mappedBy="member",	cascade=CascadeType.ALL)
	private List<CommunityComment> communityComments;
	@OneToMany(mappedBy="member",	cascade=CascadeType.ALL)
	private List<Community> communities;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String id, String pwd, String name, String nickname) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.nickname = nickname;
	}

	public Member(String id, String pwd, String name, String nickname, List<Community> communities) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.nickname = nickname;
		this.communities = communities;
	}
	
	
	public List<CommunityComment> getCommunityComments() {
		return communityComments;
	}

	public void setCommunityComments(List<CommunityComment> communityComments) {
		this.communityComments = communityComments;
	}

	public Member(String id, String pwd, String name, String nickname, List<CommunityComment> communityComments,
			List<Community> communities) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.nickname = nickname;
		this.communityComments = communityComments;
		this.communities = communities;
	}

	public List<Community> getCommunities() {
		return communities;
	}
	
	public void setCommunities(List<Community> communities) {
		this.communities = communities;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", nickname=" + nickname
				+ ", communityComments=" + communityComments + ", communities=" + communities + "]";
	}



	
}
