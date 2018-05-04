package com.hansing.entity;

import java.util.Date;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity
public class MemberRole {

	@EmbeddedId
	private MemberRoleId memberRoleId;
	
	private Date regDate;
	private boolean defaultRole;
	
	public MemberRole() {
		// TODO Auto-generated constructor stub
	}

	public MemberRole(String memberId, String roleId, Date regDate, boolean defaultRole) {
		super();
		this.memberRoleId.getMember().setId(memberId);
		this.memberRoleId.getRole().setId(roleId);
		this.regDate = regDate;
		this.defaultRole = defaultRole;
	}

	public MemberRoleId getMemberRoleId() {
		return memberRoleId;
	}

	public void setMemberRoleId(MemberRoleId memberRoleId) {
		this.memberRoleId = memberRoleId;
	}

	public String getMemberId() {
		return memberRoleId.getMember().getId();
	}

	public void setMemberId(String memberId) {
		this.memberRoleId.getMember().setId(memberId);
	}

	public String getRoleId() {
		return memberRoleId.getRole().getId();
	}

	public void setRoleId(String roleId) {
		this.memberRoleId.getRole().setId(roleId);
	}

	public Date getRegDate() {
		return regDate;
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
		return "MemberRole [memberRoleId=" + memberRoleId + ", memberId=" + memberRoleId.getMember().getId() + ", roleId=" + memberRoleId.getRole().getId()
				+ ", regDate=" + regDate + ", defaultRole=" + defaultRole + "]";
	}

	
}
