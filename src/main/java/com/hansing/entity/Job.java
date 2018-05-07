package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Job {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String contactNo;
	private int career;
	private String educationalBg;
	private String price;
	private String title;
	private boolean parmanentPosition;
	private int hit;
	
	@ManyToOne(cascade={CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="jobTypeName")
	private JobType jobType;
	
	@ManyToOne(cascade={CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="memberId")
	private Member member;
	
	@OneToMany(mappedBy="job",	cascade=CascadeType.ALL)
	private List<JobAttachment> jobAttachment;
	
	public Job() {
		// TODO Auto-generated constructor stub
	}

	public Job(int id, String name, String email, String contactNo, int career, String educationalBg, String price,
			String title, boolean parmanentPosition, int hit, List<JobAttachment> jobAttachment) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.contactNo = contactNo;
		this.career = career;
		this.educationalBg = educationalBg;
		this.price = price;
		this.title = title;
		this.parmanentPosition = parmanentPosition;
		this.hit = hit;
		this.jobAttachment = jobAttachment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public int getCareer() {
		return career;
	}

	public void setCareer(int career) {
		this.career = career;
	}

	public String getEducationalBg() {
		return educationalBg;
	}

	public void setEducationalBg(String educationalBg) {
		this.educationalBg = educationalBg;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public boolean isParmanentPosition() {
		return parmanentPosition;
	}

	public void setParmanentPosition(boolean parmanentPosition) {
		this.parmanentPosition = parmanentPosition;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public List<JobAttachment> getJobAttachment() {
		return jobAttachment;
	}

	public void setJobAttachment(List<JobAttachment> jobAttachment) {
		this.jobAttachment = jobAttachment;
	}

	@Override
	public String toString() {
		return "Job [id=" + id + ", name=" + name + ", email=" + email + ", contactNo=" + contactNo + ", career="
				+ career + ", educationalBg=" + educationalBg + ", price=" + price + ", title=" + title
				+ ", parmanentPosition=" + parmanentPosition + ", hit=" + hit + ", jobAttachment=" + jobAttachment + "]";
	}

}
