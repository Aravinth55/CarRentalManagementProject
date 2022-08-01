package com.chainsys.carrental.model;

import java.util.ArrayList;
import java.util.List;


public class CustomerRentalsDTO {
	private CustomerRegistration customerregistration;
	private List<CarRental> rentallist = new ArrayList<CarRental>();

	public CustomerRegistration getCustomerregistration() {
		return customerregistration;
	}

	public void setCustomerregistration(CustomerRegistration customerregistration) {
		this.customerregistration = customerregistration;
	}

	public List<CarRental> getRentallist() {
		return rentallist;
	}


public void addCarRental(CarRental cr) {
rentallist.add(cr);	
}

}
