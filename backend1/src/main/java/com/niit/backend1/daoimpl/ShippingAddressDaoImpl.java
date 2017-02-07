package com.niit.backend1.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend1.dao.ShippingAddressDao;
import com.niit.backend1.model.ShippingAddress;
import com.niit.backend1.model.User;

@Repository("shippingAddressDao")
@EnableTransactionManagement
@Transactional
public class ShippingAddressDaoImpl implements ShippingAddressDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void add(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user.getShippingAddress());
	}

	@Transactional
	public void update(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().update(shippingAddress);
	}

	
}
