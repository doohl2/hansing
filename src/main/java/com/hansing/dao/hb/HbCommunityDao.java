package com.hansing.dao.hb;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
	
	public List<Community> getList(Integer page){
		Session session = sessionFactory.getCurrentSession();
		Query<Community> query = session.createQuery("from Community",Community.class);
		List<Community> list = query.getResultList();
		return list;
	}
	
	public Community get(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		Community community = session.get(Community.class, id);
		return community;
	}
		
}
