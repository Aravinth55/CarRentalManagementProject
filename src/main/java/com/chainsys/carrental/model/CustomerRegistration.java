package com.chainsys.carrental.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "customerregistration")
public class CustomerRegistration {
	@Id
	@Column(name = "Customer_Id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "Customer_Id")
    @SequenceGenerator(name = "Customer_Id", sequenceName = "Customer_Id",  allocationSize = 1)
	private int customerId; // Primary key one to many
	@Column(name = "Customer_Name")
	private String customerName;
	@Column(name = "Customer_Password")
	private String customerPassword;
	@Column(name = "Address")
	private String address;
	@Column(name = "Mobile_No")
	private long mobileNo;
	@Column(name = "Gender")
	private String gender;
	@Column(name = "Blood_Group")
	private String bloodGroup;
	@Column(name = "Person_Type")
	private String personType;
	@Column(name = "Joining_Date")
	private Date joiningDate;

	@OneToMany(mappedBy = "customerRegistration", fetch = FetchType.LAZY)
	private List<CarRental> carRentals;
	@OneToMany(mappedBy = "customerRegistration", fetch = FetchType.LAZY)
	private List<ReturnCar> returnCars;

	public List<CarRental> getCarRentals() {
		return carRentals;
	}

	public List<ReturnCar> getReturnCars() {
		return returnCars;
	}

	public void setReturnCars(List<ReturnCar> returnCars) {
		this.returnCars = returnCars;
	}

	public void setCarRentals(List<CarRental> carRentals) {
		this.carRentals = carRentals;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getPersonType() {
		return personType;
	}

	public void setPersonType(String personType) {
		this.personType = personType;
	}

	public Date getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}

}
