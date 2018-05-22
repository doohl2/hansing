package com.hansing.dao.hb;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hansing.entity.Room;
import com.hansing.entity.RoomComment;

@Repository
public class HbRoomCommentDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public int insert(RoomComment comment) {
		Session session = sessionFactory.getCurrentSession();
		Room room = new Room();
		comment.setRoom(room);
		int id = (int) session.save(comment);
		int result = id>0 ? 1:0;
		
		return result;
	}
	
	public List<RoomComment> getListByRoom(Integer roomId) {
		Session session = sessionFactory.getCurrentSession();
		Query<RoomComment> query = session.createQuery("from RoomComment where roomId=:roomId order by regDate desc",RoomComment.class)
				.setParameter("roomId", roomId);
		List<RoomComment> list = query.getResultList();
		return list;
	}

}
