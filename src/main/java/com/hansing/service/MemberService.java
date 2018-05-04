package com.hansing.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hansing.dao.hb.HbMemberDao;
import com.hansing.dao.hb.HbMemberRoleDao;
import com.hansing.entity.Member;

@Service
public class MemberService {

	@Autowired
	private HbMemberDao memberDao;
	@Autowired
	private HbMemberRoleDao memberRoleDao;
	
	@Transactional
	public int insertMember(Member member) {
			int result = memberDao.insert(member);
		return result;
	}
	
	@Transactional
	public String getDefaultRoleByMemberId(String memberId) {
		String roleName = memberRoleDao.getDefaultRoleByMemberId(memberId);
		return roleName;
	}

}
