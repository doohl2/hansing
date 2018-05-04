package com.hansing.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class JobAttachment {

	@Id
	private String name;
	
	private int jobId;
	
	public JobAttachment() {
		// TODO Auto-generated constructor stub
	}

	public JobAttachment(String name, int jobId) {
		super();
		this.name = name;
		this.jobId = jobId;
	}

	@Override
	public String toString() {
		return "JobAttachment [name=" + name + ", jobId=" + jobId + "]";
	}
	
}
