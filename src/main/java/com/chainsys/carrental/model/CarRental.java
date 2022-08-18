package com.chainsys.carrental.model;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import com.chainsys.carrental.compositekey.CarRentalCompositekey;

@Entity
@Table(name = "Carrental")
@IdClass(CarRentalCompositekey.class)
public class CarRental {
	@Id
	@Column(name = "CARREGNO")
	private String carRegno; // Foreign key
	@Id
	@Column(name = "CUSTOMERID")
	private int customerId; // Foreign key    //many to one
	@Column(name = "FROMDATE")
	private Date fromDate;
	
	@Column(name = "DUEDATE")
	private Date dueDate;
	
	@Column(name = "RETAILFEE")


	private float retailFee;
	@Column(name = "FUELLEVEL")
	
	private String fuelLevel;
	@Column(name = "WORKINGCONDITION")
	
	private String workingCondition;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CUSTOMERID", nullable = false, insertable = false, updatable = false)
	private CustomerRegistration customerRegistration;

	public CustomerRegistration getCustomerRegistration() {
		return customerRegistration;
	}

	public void setCustomerRegistration(CustomerRegistration customerRegistration) {
		this.customerRegistration = customerRegistration;
	}

	public String getCarRegno() {
		return carRegno;
	}

	public void setCarRegno(String carRegno) {
		this.carRegno = carRegno;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public float getRetailFee() {
		return retailFee;
	}

	public void setRetailFee(float retailFee) {
		this.retailFee = retailFee;
	}

	public String getFuelLevel() {
		return fuelLevel;
	}

	public void setFuelLevel(String fuelLevel) {
		this.fuelLevel = fuelLevel;
	}

	public String getWorkingCondition() {
		return workingCondition;
	}

	public void setWorkingCondition(String workingCondition) {
		this.workingCondition = workingCondition;
	}

}