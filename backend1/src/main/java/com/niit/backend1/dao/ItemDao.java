package com.niit.backend1.dao;

import java.util.List;

import com.niit.backend1.model.Cart;
import com.niit.backend1.model.Item;

public interface ItemDao {

	void add(Item item);
	
	void remove(Item item);
	
	void removeAll(Cart cart);
	
	Item getItemById(int itemId);
	List<Item> getCartItems(int cartid);
}
