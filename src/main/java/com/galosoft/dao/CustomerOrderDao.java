package com.galosoft.dao;

import com.galosoft.model.CustomerOrder;

public interface CustomerOrderDao {
	void addCustomerOrder(CustomerOrder customerOrder);
	double getCustomerOrderGrandTotal(int cartId);
}
