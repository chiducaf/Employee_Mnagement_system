package com.syntel.service;



import java.util.List;


import com.syntel.dto.Employee;


public interface EmployeeService {
	void insertEmployee(Employee employee);
	boolean getStudentByLogin(String userName, String password);
	boolean getEmployeeByUserName(String userName);
	public List<Employee> getAllDetails();
	
}
