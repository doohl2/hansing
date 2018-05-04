package com.hansing.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hansing.dao.hb.HbRoomDao;
import com.hansing.entity.Room;

@Service
public class RoomService {
	
	@Autowired
	private HbRoomDao roomDao;
	
	@Transactional
	public List<Room> getList(Integer page){
		List<Room> list = roomDao.getList(page);
		return list;
	}
	
	@Transactional
	public Room get(Integer id) {
		Room room = roomDao.get(id);
		return room;	
	}
	
	@Transactional
	public int insert(Room room) {
		int result = roomDao.insert(room);
		return result;
	}
	
}
