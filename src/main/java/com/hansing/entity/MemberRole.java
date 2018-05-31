package com.hansing.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity
public class MemberRole {

	@EmbeddedId
	private MemberRoleId memberRoleId;
	
	@Column(insertable=false)
	private Date regDate;
	@Column(insertable=false)
	private boolean defaultRole;
	
	public MemberRole() {
		// TODO Auto-generated constructor stub
	}	

	public MemberRole(String memberId, String roleId, Date regDate, boolean defaultRole) {
		super();
		this.memberRoleId.setMemberId(memberId);
		this.memberRoleId.setRoleId(roleId);
		this.regDate = regDate;
		this.defaultRole = defaultRole;
	}

	public MemberRoleId getMemberRoleId() {
		return memberRoleId;
	}

	public void setMemberRoleId(MemberRoleId memberRoleId) {
		this.memberRoleId = memberRoleId;
	}

	public Date getRegDate() {
		return regDate;
	}

	public String getMemberId() {
		return memberRoleId.getMemberId();
	}

	public void setMemberId(String memberId) {
			memberRoleId.setMemberId(memberId);
	}

	public String getRoleId() {
		return this.memberRoleId.getRoleId();
	}

	public void setRoleId(String roleId) {
		memberRoleId.setRoleId(roleId);
	}
	
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public boolean isDefaultRole() {
		return defaultRole;
	}

	public void setDefaultRole(boolean defaultRole) {
		this.defaultRole = defaultRole;
	}

	@Override
	public String toString() {
		return "MemberRole [memberId=" +memberRoleId.getMemberId() + ", roleId=" + memberRoleId.getRoleId() + ", regDate=" + regDate + ", defaultRole=" + defaultRole + "]";
	}
	
	
}
