package com.ben.springdemo.dao;

import java.util.List;

import com.ben.springdemo.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer newCustomer);

	public Customer getCustomer(int id);

	public void deleteCustomer(Customer customer);
}
