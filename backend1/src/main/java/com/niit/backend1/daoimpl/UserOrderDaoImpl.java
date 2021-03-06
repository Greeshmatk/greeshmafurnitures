package com.niit.backend1.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend1.dao.UserOrderDao;
import com.niit.backend1.model.UserOrder;

@Repository("userOrderDao")
@Transactional
@EnableTransactionManagement
public class UserOrderDaoImpl implements UserOrderDao {

	@Autowired
	SessionFactory sessionFactory;

	public void add(UserOrder userOrder) {
		sessionFactory.getCurrentSession().saveOrUpdate(userOrder);
	}

	public UserOrder getUserOrderById(int userOrderId) {
		/*System.out.println("====================TEST====================");
		String hql = "from UserOrder where userOrderId=" + userOrderId;
		UserOrder userOrder = (UserOrder) sessionFactory.getCurrentSession().createQuery(hql).getSingleResult();
		return userOrder;*/
		
		Session session=sessionFactory.getCurrentSession();
		UserOrder userOrder=(UserOrder)session.createQuery("from UserOrder where userorderid="+userOrderId).getSingleResult();
		return userOrder;
	}
}
