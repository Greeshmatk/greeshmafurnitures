package com.niit.backend1.dao;

import com.niit.backend1.model.ShippingAddress;

public interface ShippingAddressDao {

	void add(ShippingAddress shippingAddress);
	
	void update(ShippingAddress shippingAddress);
	
	//ShippingAddress getByUserId(int userId);
}
