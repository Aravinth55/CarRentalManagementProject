package com.chainsys.carrental.model;

import java.util.ArrayList;
import java.util.List;

public class CustomerReturnCarsDTO {
	private CustomerRegistration customerRegistration;
	private List<ReturnCar> returnCarList = new ArrayList<ReturnCar>();

	public CustomerRegistration getCustomerRegistration() {
		return customerRegistration;
	}

	public void setCustomerRegistration(CustomerRegistration customerRegistration) {
		this.customerRegistration = customerRegistration;
	}

	public void addReturnCar(ReturnCar returncar) {
		returnCarList.add(returncar);
	}

	public List<ReturnCar> getReturnCarList() {
		return returnCarList;
	}

}
