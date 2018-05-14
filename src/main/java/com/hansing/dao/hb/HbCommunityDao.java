package com.hansing.dao.hb;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hansing.entity.Community;



@Repository
public class HbCommunityDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public int insert(Community community) {
		Session session = sessionFactory.getCurrentSession();
		session.save(community);
		return 1;
	}
		
}
