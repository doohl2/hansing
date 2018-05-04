package com.hansing.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class JobType {
	@Id
	private String name;
	
	@OneToMany(mappedBy="jobType",	cascade=CascadeType.ALL)
	private List<Job> jobs;
	
	public JobType() {
		// TODO Auto-generated constructor stub
	}

	public JobType(String name, List<Job> jobs) {
		super();
		this.name = name;
		this.jobs = jobs;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Job> getJobs() {
		return jobs;
	}

	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}

	@Override
	public String toString() {
		return "JobType [name=" + name + ", jobs=" + jobs + "]";
	}

	
}
