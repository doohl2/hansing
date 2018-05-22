package com.hansing.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

@MappedSuperclass
public abstract class AbstractRoom {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	@Column(insertable=false)
	private Date regDate;
	private String contactNo;
	private int price;
	private String mainImg;
	private String subImg;
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
	
	@Transient
	private List<RoomComment> comments;
	
	@Transient
	private Member member;
	
	@Transient
	private Direction direction;
	
	@Transient
	private RoomSize roomSize;
	
	@Transient
	private RoomType roomType;
	
	@Transient
	private List<RoomDetailImg> roomDetailImgs;
	
	public AbstractRoom() {
		// TODO Auto-generated constructor stub
	}

	public AbstractRoom(int id, String title, String content, Date regDate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
	}

	public AbstractRoom(int price, String mainImg) {
		super();
		this.price = price;
		this.mainImg = mainImg;
	}

	public AbstractRoom(int id, String title, String content, Date regDate, String contactNo, int price, String mainImg,
			String subImg, boolean aircon, boolean pub, boolean cook, Date dateOfStart, String gender, int minDuration,
			String memberId, String directionName, String roomSizeName, String roomTypeName, Member member,
			Direction direction, RoomSize roomSize, RoomType roomType, List<RoomDetailImg> roomDetailImgs,
			List<RoomComment> comments) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.contactNo = contactNo;
		this.price = price;
		this.mainImg = mainImg;
		this.subImg = subImg;
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
		this.member = member;
		this.direction = direction;
		this.roomSize = roomSize;
		this.roomType = roomType;
		this.roomDetailImgs = roomDetailImgs;
		this.comments = comments;
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

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Direction getDirection() {
		return direction;
	}

	public void setDirection(Direction direction) {
		this.direction = direction;
	}

	public RoomSize getRoomSize() {
		return roomSize;
	}

	public void setRoomSize(RoomSize roomSize) {
		this.roomSize = roomSize;
	}

	public RoomType getRoomType() {
		return roomType;
	}

	public void setRoomType(RoomType roomType) {
		this.roomType = roomType;
	}

	public List<RoomDetailImg> getRoomDetailImgs() {
		return roomDetailImgs;
	}

	public void setRoomDetailImgs(List<RoomDetailImg> roomDetailImgs) {
		this.roomDetailImgs = roomDetailImgs;
	}

	public List<RoomComment> getComments() {
		return comments;
	}

	public void setComments(List<RoomComment> comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		return "AbstractRoom [id=" + id + ", title=" + title + ", content=" + content + ", regDate=" + regDate
				+ ", contactNo=" + contactNo + ", price=" + price + ", mainImg=" + mainImg + ", subImg=" + subImg
				+ ", aircon=" + aircon + ", pub=" + pub + ", cook=" + cook + ", dateOfStart=" + dateOfStart
				+ ", gender=" + gender + ", minDuration=" + minDuration + ", memberId=" + memberId + ", directionName="
				+ directionName + ", roomSizeName=" + roomSizeName + ", roomTypeName=" + roomTypeName + ", member="
				+ member + ", direction=" + direction + ", roomSize=" + roomSize + ", roomType=" + roomType
				+ ", roomDetailImgs=" + roomDetailImgs + ", comments=" + comments + "]";
	}
 
}
