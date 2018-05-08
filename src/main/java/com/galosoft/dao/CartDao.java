package com.galosoft.dao;

import com.galosoft.model.Cart;

public interface CartDao {

	Cart getCartById(int cartId);
	void update(Cart cart);
}
