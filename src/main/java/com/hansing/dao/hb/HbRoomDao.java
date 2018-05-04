package com.hansing.dao.hb;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hansing.entity.Room;

@Repository
public class HbRoomDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Room> getList(Integer page){
		Session session = sessionFactory.getCurrentSession();
		Query<Room> query = session.createQuery("from Room",Room.class);
		List<Room> list = query.getResultList();
		return list;
	}
	
	public Room get(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		Room room = session.get(Room.class, id);
		return room;
	}
	
	public int insert(Room room) {
		return 0;
	}
	


		
}
