package com.hansing.dao.hb;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hansing.entity.Room;
import com.hansing.entity.RoomComment;
import com.hansing.entity.RoomCommentView;
import com.hansing.entity.RoomView;

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
	
	public List<RoomCommentView> getListByRoom(Integer roomId) {
		Session session = sessionFactory.getCurrentSession();
		Query<RoomCommentView> query = session.createQuery("from RoomCommentView where roomId=:roomId order by regDate desc",RoomCommentView.class)
				.setParameter("roomId", roomId);
		List<RoomCommentView> list = query.getResultList();
		return list;
	}
		
	public int del(RoomComment comment) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(comment);
		
		return 0;
	}

	public int edit(RoomComment comment) {
		Session session = sessionFactory.getCurrentSession();
		session.update(comment);
		return 0;
	}
	
	

}