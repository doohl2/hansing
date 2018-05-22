package com.hansing.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class Location {
	@Id
	private String name;
	private String directionName;

	@Transient
	private Direction direction;

	public Location() {
		// TODO Auto-generated constructor stub
	}

	public Location(String name, String directionName, Direction direction) {
		super();
		this.name = name;
		this.directionName = directionName;
		this.direction = direction;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDirectionName() {
		return directionName;
	}

	public void setDirectionName(String directionName) {
		this.directionName = directionName;
	}

	public Direction getDirection() {
		return direction;
	}

	public void setDirection(Direction direction) {
		this.direction = direction;
	}

	@Override
	public String toString() {
		return "Location [name=" + name + ", directionName=" + directionName + ", direction=" + direction + "]";
	}

}
