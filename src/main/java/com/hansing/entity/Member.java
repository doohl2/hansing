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
	private List<Room> rooms;
	@OneToMany(mappedBy="member",	cascade=CascadeType.ALL)
	private List<Job> jobs;
	@OneToMany(mappedBy="member",	cascade=CascadeType.ALL)
	private List<Market> markets;
	@OneToMany(mappedBy="member",	cascade=CascadeType.ALL)
	private List<MarketComment> marketComments;
	@OneToMany(mappedBy="member",	cascade=CascadeType.ALL)
	private List<CommunityComment> communityComments;
	@OneToMany(mappedBy="member",	cascade=CascadeType.ALL)
	private List<Community> communities;
	@OneToMany(mappedBy="member",	cascade=CascadeType.ALL)
	private List<Store> stores;
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String id, String pwd, String name, String nickname) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.nickname = nickname;
	}

	public Member(String id, String pwd, String name, String nickname, List<Room> rooms, List<Job> jobs,
			List<Market> markets, List<MarketComment> marketComments, List<CommunityComment> communityComments,
			List<Community> communities, List<Store> stores) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.nickname = nickname;
		this.rooms = rooms;
		this.jobs = jobs;
		this.markets = markets;
		this.marketComments = marketComments;
		this.communityComments = communityComments;
		this.communities = communities;
		this.stores = stores;
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

	public List<Room> getRooms() {
		return rooms;
	}

	public void setRooms(List<Room> rooms) {
		this.rooms = rooms;
	}

	public List<Job> getJobs() {
		return jobs;
	}

	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}

	public List<Market> getMarkets() {
		return markets;
	}

	public void setMarkets(List<Market> markets) {
		this.markets = markets;
	}

	public List<MarketComment> getMarketComments() {
		return marketComments;
	}

	public void setMarketComments(List<MarketComment> marketComments) {
		this.marketComments = marketComments;
	}

	public List<CommunityComment> getCommunityComments() {
		return communityComments;
	}

	public void setCommunityComments(List<CommunityComment> communityComments) {
		this.communityComments = communityComments;
	}

	public List<Community> getCommunities() {
		return communities;
	}

	public void setCommunities(List<Community> communities) {
		this.communities = communities;
	}

	public List<Store> getStores() {
		return stores;
	}

	public void setStores(List<Store> stores) {
		this.stores = stores;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", nickname=" + nickname + ", rooms=" + rooms
				+ ", jobs=" + jobs + ", markets=" + markets + ", marketComments=" + marketComments
				+ ", communityComments=" + communityComments + ", communities=" + communities + ", stores=" + stores
				+ "]";
	}

	
}
