package com.syntel.dao;

import java.util.List;

//import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.syntel.dto.Employee;

import com.syntel.mappers.EmployeeMapper;



@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	@Autowired
	 EmployeeMapper employeeMapper;
	
	public List<Employee> getAllDetails() {
		
	
		
		List<Employee> empDtls = null;
	
			empDtls=employeeMapper.getAllDetails();
			
		return empDtls;
		
	}}



