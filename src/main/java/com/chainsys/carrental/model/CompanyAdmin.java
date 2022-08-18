package com.chainsys.carrental.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "companyadmin")
public class CompanyAdmin {
	@Id
	@Column(name = "USERID")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "USERID")
    @SequenceGenerator(name = "USERID", sequenceName = "USERID",  allocationSize = 1)
	private int userId;    //Primary key
	@Column(name = "USERNAME")
	
	private String userName;
	@Column(name = "USERPASSWORD")
	
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