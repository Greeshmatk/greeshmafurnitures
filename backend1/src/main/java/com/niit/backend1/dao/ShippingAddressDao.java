package com.niit.backend1.dao;

import com.niit.backend1.model.ShippingAddress;
import com.niit.backend1.model.User;

public interface ShippingAddressDao {

	void add(User user);
	
	void update(ShippingAddress shippingAddress);
	
	//ShippingAddress getByUserId(int userId);
}
