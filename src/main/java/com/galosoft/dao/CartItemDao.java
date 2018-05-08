package com.galosoft.dao;

import com.galosoft.model.Cart;
import com.galosoft.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
	CartItem getCartItemByProductId(int productId);
}
