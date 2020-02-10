package com.syntel.dto;


public class EmployeeLogin {

	@Override
	public String toString() {
		return "EmployeeLogin [userName=" + userName + ", password=" + password + "]";
	}

	private String userName;
		
	private String password;

	public String getPassword() {
		return password;
	}

	public String getUserName() {
		return userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}	

}
