package com.hansing.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hansing.dao.hb.HbCommunityDao;
import com.hansing.entity.Community;
import com.hansing.entity.CommunityView;
import com.hansing.entity.Room;

@Service
public class CommunityService {

	@Autowired
	private HbCommunityDao communityDao;

	@Transactional
	public int insertCommunity(Community community) {
		int result = communityDao.insert(community);
		return result;
	}

	@Transactional
	public List<CommunityView> getList(Integer page) {
		List<CommunityView> list = communityDao.getList(page);
		return list;
	}
	
	@Transactional
	public CommunityView getCommunity(Integer id) {
		CommunityView community = communityDao.getCommunity(id);
		return community;
	}
	
}
