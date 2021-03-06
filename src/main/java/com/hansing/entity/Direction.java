package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Direction {

	@Id
	private String name;
	
	@Transient
	private List<Location> locations;
	
	@Transient
	private List<Room> rooms;
	
	public Direction() {
		// TODO Auto-generated constructor stub
	}

	public Direction(String name, List<Location> locations, List<Room> rooms) {
		super();
		this.name = name;
		this.locations = locations;
		this.rooms = rooms;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Location> getLocations() {
		return locations;
	}

	public void setLocations(List<Location> locations) {
		this.locations = locations;
	}

	public List<Room> getRooms() {
		return rooms;
	}

	public void setRooms(List<Room> rooms) {
		this.rooms = rooms;
	}

	@Override
	public String toString() {
		return "Direction [name=" + name + ", locations=" + locations + ", rooms=" + rooms + "]";
	}

	
}

