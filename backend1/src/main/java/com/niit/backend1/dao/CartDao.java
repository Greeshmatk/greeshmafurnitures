package com.niit.backend1.dao;

import com.niit.backend1.model.Cart;

public interface CartDao {

	void add(Cart cart);
	
	void update(Cart cart);
	
	Cart getById(int cartId);
	
	Cart getByUserId(int userId);
}
