package com.hansing.dao.hb;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hansing.entity.Room;
import com.hansing.entity.RoomView;

@Repository
public class HbRoomDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<RoomView> getList(Integer page){
		Session session = sessionFactory.getCurrentSession();
		Query<RoomView> query = session.createQuery("from RoomView",RoomView.class);
		List<RoomView> list = query.getResultList();
		return list;
	}
	
	public RoomView get(Integer roomId) {
		Session session = sessionFactory.getCurrentSession();
		RoomView room = session.get(RoomView.class, roomId);
		return room;
	}
	
	public int insert(Room room) {
		return 0;
	}
	


		
}
