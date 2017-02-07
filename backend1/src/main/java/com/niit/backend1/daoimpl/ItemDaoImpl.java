package com.niit.backend1.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend1.dao.ItemDao;
import com.niit.backend1.model.Cart;
import com.niit.backend1.model.Item;


@Repository("itemDao")
@EnableTransactionManagement
@Transactional
public class ItemDaoImpl implements ItemDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void add(Item item) {
		sessionFactory.getCurrentSession().saveOrUpdate(item);
	}

	public void remove(Item item) {
		sessionFactory.getCurrentSession().delete(item);
	}

	public void removeAll(Cart cart) {
		sessionFactory.getCurrentSession().createQuery("delete from Item where cartId="+cart.getCartId()).executeUpdate();
	}

	public Item getItemById(int itemId) {
		String hql = "from Item where itemId=" + itemId;
		Item item = (Item) sessionFactory.getCurrentSession().createQuery(hql).getSingleResult();
		return item;
	}

	public List<Item> getCartItems(int cartid) {
		Session session=sessionFactory.getCurrentSession();
		List<Item> itemlist=session.createQuery("from Item where cartId="+cartid).getResultList();
		return itemlist;
		
		
	}

}
