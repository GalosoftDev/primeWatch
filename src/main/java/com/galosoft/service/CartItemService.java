package com.galosoft.service;

import com.galosoft.model.Cart;
import com.galosoft.model.CartItem;

public interface CartItemService {
	
	void addCartItem(CartItem cartItem);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
	CartItem getCartItemByProductId(int productId);

}
