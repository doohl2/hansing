package com.hansing.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

@MappedSuperclass
public abstract class AbstractRoomComment implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(insertable=false)
	private Date regDate;
	private String content;
	private boolean secret;
	private int roomId;
	private String memberId;
	
	@Transient
	private Room room;
	@Transient
	private Member member;
	
	public AbstractRoomComment() {
		// TODO Auto-generated constructor stub
	}
	
	public AbstractRoomComment(int roomId) {
		super();
		this.roomId = roomId;
	}


	public AbstractRoomComment(int roomId, String memberId) {
		super();
		this.roomId = roomId;
		this.memberId = memberId;
	}

	public AbstractRoomComment(int id, Date regDate, String content, boolean secret, int roomId, String memberId, Room room,
			Member member) {
		super();
		this.id = id;
		this.regDate = regDate;
		this.content = content;
		this.secret = secret;
		this.roomId = roomId;
		this.memberId = memberId;
		this.room = room;
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

	public boolean isSecret() {
		return secret;
	}

	public void setSecret(boolean secret) {
		this.secret = secret;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "RoomComment [id=" + id + ", regDate=" + regDate + ", content=" + content + ", secret=" + secret
				+ ", roomId=" + roomId + ", memberId=" + memberId + ", room=" + room + ", member=" + member + "]";
	}
	

}
