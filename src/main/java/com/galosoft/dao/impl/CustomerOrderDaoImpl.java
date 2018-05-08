package com.galosoft.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.galosoft.dao.CustomerOrderDao;
import com.galosoft.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addCustomerOrder(CustomerOrder customerOrder) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(session);
		session.flush();
		
	}

	@Override
	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
