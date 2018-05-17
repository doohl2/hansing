package com.hansing.dao.hb;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hansing.entity.Community;
import com.hansing.entity.CommunityView;

@Repository
public class HbCommunityDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public int insert(Community community) {
		Session session = sessionFactory.getCurrentSession();
		session.save(community);
		return 1;
	}
	
	public List<CommunityView> getList(Integer page){
		Session session = sessionFactory.getCurrentSession();
		Query<CommunityView> query = session.createQuery("from CommunityView order by regDate desc",CommunityView.class);
		List<CommunityView> list = query.getResultList();
		return list;
	}
	
	public CommunityView getCommunity(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		CommunityView community = session.get(CommunityView.class, id);
		return community;
	}
		
}
