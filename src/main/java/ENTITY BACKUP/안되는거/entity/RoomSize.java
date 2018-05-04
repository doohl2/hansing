package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class RoomSize {	
	@Id
	private String name;
	
	@OneToMany(mappedBy="roomSize",	cascade=CascadeType.ALL)
	private List<Room> rooms;
	
	public RoomSize() {
		// TODO Auto-generated constructor stub
	}
	
	public RoomSize(String name, List<Room> rooms) {
		super();
		this.name = name;
		this.rooms = rooms;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Room> getRoom() {
		return rooms;
	}

	public void setRoom(List<Room> rooms) {
		this.rooms = rooms;
	}

	@Override
	public String toString() {
		return "RoomSize [name=" + name + ", rooms=" + rooms + "]";
	}

}
