package com.chainsys.carrental.model;

import java.util.ArrayList;
import java.util.List;


public class CustomerRentalsDTO {
	private CustomerRegistration customerRegistration;
	private List<CarRental> rentallist = new ArrayList<CarRental>();

	public CustomerRegistration getCustomerregistration() {
		return customerRegistration;
	}

	public void setCustomerregistration(CustomerRegistration customerregistration) {
		this.customerRegistration = customerregistration;
	}

	public List<CarRental> getRentallist() {
		return rentallist;
	}


public void addCarRental(CarRental cr) {
rentallist.add(cr);	
}

}
