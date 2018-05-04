package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Member {
	@Id
	private String id;
	private String pwd;
	private String name;
	private String nickname;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String id, String pwd, String name, String nickname) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.nickname = nickname;
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
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", nickname=" + nickname + "]";
	}
	
}
