package com.niit.backend1.dao;

import com.niit.backend1.model.UserOrder;

public interface UserOrderDao {

	void add(UserOrder userOrder);
	
	UserOrder getUserOrderById(int userOrderId);
}
