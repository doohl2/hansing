package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RoomDetailImg {
	@Id
	private String name;
	
	private int roomId;

	public RoomDetailImg() {
		// TODO Auto-generated constructor stub
	}

	public RoomDetailImg(String name, int roomId) {
		super();
		this.name = name;
		this.roomId = roomId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	@Override
	public String toString() {
		return "RoomDetailImg [name=" + name + ", roomId=" + roomId + "]";
	}
	
}
