	
package com.hansing.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.springframework.lang.Nullable;

@Entity
public class CommunityView extends AbstractCommunity {
	
	private int min;
	private int diff;
	
	public CommunityView() {
		// TODO Auto-generated constructor stub
	}

	public CommunityView(int min, int diff) {
		super();
		this.min = min;
		this.diff = diff;
	}

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	}

	public int getDiff() {
		return diff;
	}

	public void setDiff(int diff) {
		this.diff = diff;
	}

	@Override
	public String toString() {
		return "CommunityView [min=" + min + ", diff=" + diff + "]";
	}

	


	
	
	
}
