package com.hansing.dao.hb;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hansing.entity.Member;
import com.hansing.entity.MemberRole;

@Repository
public class HbMemberDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public int insert(Member member) {
		Session session = sessionFactory.getCurrentSession();
		session.save(member);
		return 1;
	}

		
}
