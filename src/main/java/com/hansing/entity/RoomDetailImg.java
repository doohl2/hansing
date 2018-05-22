package com.hansing.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class RoomDetailImg {
	@Id
	private String name;
	private int roomId;
	
	@Transient
	private Room room;

	public RoomDetailImg() {
		// TODO Auto-generated constructor stub
	}

	public RoomDetailImg(String name, int roomId, Room room) {
		super();
		this.name = name;
		this.roomId = roomId;
		this.room = room;
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

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	@Override
	public String toString() {
		return "RoomDetailImg [name=" + name + ", roomId=" + roomId + ", room=" + room + "]";
	}

}
