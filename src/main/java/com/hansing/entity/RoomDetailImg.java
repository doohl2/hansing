package com.hansing.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class RoomDetailImg {
	@Id
	private String name;
	
	@ManyToOne(cascade={CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="roomId")
	private Room room;

	public RoomDetailImg() {
		// TODO Auto-generated constructor stub
	}

	public RoomDetailImg(String name, Room room) {
		super();
		this.name = name;
		this.room = room;
	}

	public RoomDetailImg(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	@Override
	public String toString() {
		return "RoomDetailImg [name=" + name + ", room=" + room + "]";
	}


}
