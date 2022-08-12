package com.chainsys.carrental.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "companyadmin")
public class CompanyAdmin {
	@Id
	@Column(name = "USERID")
	private int userId;    //Primary key
	@Column(name = "USERNAME")
//	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	
	private String userName;
	@Column(name = "USERPASSWORD")
//	@Size(max = 20, min = 8, message = "*Password length should be 8 to 20")
//	@NotBlank(message = "*Password can't be Empty")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid password ")
	
	private String userPassword;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
}