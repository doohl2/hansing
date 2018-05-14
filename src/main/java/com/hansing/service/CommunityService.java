package com.hansing.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hansing.dao.hb.HbCommunityDao;
import com.hansing.entity.Community;

@Service
public class CommunityService {

	@Autowired
	private HbCommunityDao communityDao;

	@Transactional
	public int insertCommunity(Community community) {
		int result = communityDao.insert(community);
		return result;
	}
	

	
}
