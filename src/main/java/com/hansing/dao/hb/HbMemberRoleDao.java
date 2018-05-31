package com.hansing.dao.hb;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hansing.entity.MemberRole;

@Repository
public class HbMemberRoleDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public String getDefaultRoleByMemberId(String memberId) {
		Session session = sessionFactory.getCurrentSession();
		List<MemberRole> list = session.createQuery("from MemberRole mr where mr.defaultRole=0").getResultList();
		String roleName = list.get(0).getRoleId();	
		return roleName;
	}

	public int insert(MemberRole memberRole) {
		Session session = sessionFactory.getCurrentSession();
		session.save(memberRole);
		return 1;
	}
}
