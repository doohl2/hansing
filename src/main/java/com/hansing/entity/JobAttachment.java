package com.hansing.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;


@Entity
public class JobAttachment {

	@Id
	private String name;
	private int jobId;
	
	@Transient
	private Job job;
	
	public JobAttachment() {
		// TODO Auto-generated constructor stub
	}

	public JobAttachment(String name, int jobId, Job job) {
		super();
		this.name = name;
		this.jobId = jobId;
		this.job = job;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	@Override
	public String toString() {
		return "JobAttachment [name=" + name + ", jobId=" + jobId + ", job=" + job + "]";
	}

}
