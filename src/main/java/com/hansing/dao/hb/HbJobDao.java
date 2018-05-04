package com.hansing.dao.hb;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class HbJobDao {

	@Autowired
	private SessionFactory sessionFactory;
	

		
}
