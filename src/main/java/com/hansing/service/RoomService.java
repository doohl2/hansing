package com.hansing.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hansing.dao.hb.HbRoomCommentDao;
import com.hansing.dao.hb.HbRoomDao;
import com.hansing.entity.Room;
import com.hansing.entity.RoomComment;
import com.hansing.entity.RoomCommentView;
import com.hansing.entity.RoomView;

@Service
public class RoomService {
	
	@Autowired
	private HbRoomDao roomDao;
	@Autowired
	private HbRoomCommentDao roomCommentDao;
	
	@Transactional
	public List<RoomView> getList(Integer page){
		List<RoomView> result = roomDao.getList(page);
		return result;
	}
	
	@Transactional
	public RoomView getRoom(Integer id) {
		RoomView room = roomDao.get(id);
		List<RoomCommentView> comments = roomCommentDao.getListByRoom(id);
		room.setComments(comments);
		return room;	
	}
	
	@Transactional
	public int insertRoom(Room room) {
		int result = roomDao.insert(room);
		return result;
	}
	
	@Transactional
	public int addComment(RoomComment comment) {
		int result = roomCommentDao.insert(comment);
		return result;
	}
	
	@Transactional
	public List<RoomCommentView> getListRoomCommentByRoom(Integer roomId) {
		List<RoomCommentView> result = roomCommentDao.getListByRoom(roomId);
		for(RoomCommentView r : result)
			r.setRoom(null);
		return result;
	}
		
	@Transactional
	public int delComment(RoomComment comment) {
		int result = roomCommentDao.del(comment);
		return result;
		
	}
	
}