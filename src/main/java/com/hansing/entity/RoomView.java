package com.hansing.entity;

import javax.persistence.Entity;

@Entity
public class RoomView extends AbstractRoom{

	private int commentCount;
	
	public RoomView() {
		// TODO Auto-generated constructor stub
	}

	public RoomView(int commentCount) {
		super();
		this.commentCount = commentCount;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

	@Override
	public String toString() {
		return "RoomView [commentCount=" + commentCount + "]";
	}
		
}
