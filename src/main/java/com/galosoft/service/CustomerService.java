package com.galosoft.service;

import java.util.List;
import com.galosoft.model.Customer;

public interface CustomerService {
	
	void addCustomer(Customer customer);
	Customer getCustomerById(int customerId);
	List<Customer> getAllCustomers();
	Customer getCustomerByUsername(String username);

}
