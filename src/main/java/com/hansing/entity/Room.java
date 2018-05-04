package com.hansing.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Room {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	private Date regDate;
	private String contactNo;
	private int price;
	private String mainImg;
	private String subImg;
	private String direction;
	private String location;
	private boolean aircon;
	private boolean pub;
	private boolean cook;
	private Date dateOfStart;
	private String gender;
	private int minDuration; 
	
	private String memberId;
	private String directionName;
	private String roomSizeName;
	private String roomTypeName;
	
	public Room() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Room(int price, String mainImg, String location) {
		super();
		this.price = price;
		this.mainImg = mainImg;
		this.location = location;
	}



	public Room(int id, String title, String content, Date regDate, String contactNo, int price, String mainImg,
			String subImg, String direction, String location, boolean aircon, boolean pub,
			boolean cook, Date dateOfStart, String gender, int minDuration, String memberId, String directionName,
			String roomSizeName, String roomTypeName) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.contactNo = contactNo;
		this.price = price;
		this.mainImg = mainImg;
		this.subImg = subImg;
		this.direction = direction;
		this.location = location;
		this.aircon = aircon;
		this.pub = pub;
		this.cook = cook;
		this.dateOfStart = dateOfStart;
		this.gender = gender;
		this.minDuration = minDuration;
		this.memberId = memberId;
		this.directionName = directionName;
		this.roomSizeName = roomSizeName;
		this.roomTypeName = roomTypeName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public String getSubImg() {
		return subImg;
	}

	public void setSubImg(String subImg) {
		this.subImg = subImg;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public boolean isAircon() {
		return aircon;
	}

	public void setAircon(boolean aircon) {
		this.aircon = aircon;
	}

	public boolean isPub() {
		return pub;
	}

	public void setPub(boolean pub) {
		this.pub = pub;
	}

	public boolean isCook() {
		return cook;
	}

	public void setCook(boolean cook) {
		this.cook = cook;
	}

	public Date getDateOfStart() {
		return dateOfStart;
	}

	public void setDateOfStart(Date dateOfStart) {
		this.dateOfStart = dateOfStart;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getMinDuration() {
		return minDuration;
	}

	public void setMinDuration(int minDuration) {
		this.minDuration = minDuration;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getDirectionName() {
		return directionName;
	}

	public void setDirectionName(String directionName) {
		this.directionName = directionName;
	}

	public String getRoomSizeName() {
		return roomSizeName;
	}

	public void setRoomSizeName(String roomSizeName) {
		this.roomSizeName = roomSizeName;
	}

	public String getRoomTypeName() {
		return roomTypeName;
	}

	public void setRoomTypeName(String roomTypeName) {
		this.roomTypeName = roomTypeName;
	}

	@Override
	public String toString() {
		return "Room [id=" + id + ", title=" + title + ", content=" + content + ", regDate=" + regDate + ", contactNo="
				+ contactNo + ", price=" + price + ", mainImg=" + mainImg + ", subImg=" + subImg + ", direction=" + direction + ", location=" + location + ", aircon=" + aircon + ", pub="
				+ pub + ", cook=" + cook + ", dateOfStart=" + dateOfStart + ", gender=" + gender + ", minDuration="
				+ minDuration + ", memberId=" + memberId + ", directionName=" + directionName + ", roomSizeName="
				+ roomSizeName + ", roomTypeName=" + roomTypeName + "]";
	}
	
}
