package com.hansing.entity;

import javax.persistence.Entity;

@Entity
public class RoomCommentView extends AbstractRoomComment {

	private String nickname;
	
	public RoomCommentView() {
		// TODO Auto-generated constructor stub
	}

	public RoomCommentView(String nickname) {
		super();
		this.nickname = nickname;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "RoomCommentView [nickname=" + nickname + "]";
	}
	
}
