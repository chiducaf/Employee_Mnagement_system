package com.syntel.service;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.syntel.dto.Employee;

import com.syntel.dao.EmployeeDao;
import com.syntel.mappers.EmployeeMapper;

@Service("studentService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeMapper employeeMapper;
	@Autowired
	EmployeeDao employeeDao;
	@Transactional
	public void insertEmployee(Employee employee) {
		employeeMapper.insertEmployee(employee);
	}

	public boolean getStudentByLogin(String userName, String password) {
		Employee employee = employeeMapper.getEmployeeByUserName(userName);
		
		if(employee != null && employee.getPassword().equals(password)) {
			return true;
		}
		
		return false;
	}

	public boolean getEmployeeByUserName(String userName) {
		Employee employee = employeeMapper.getEmployeeByUserName(userName);
		
		if(employee != null) {
			return true;
		}
		
		return false;
	}
	
//	
//	public List<Employee> getAllDetails() throws Exception {
//		
//		List<Employee> employeeDetails = null;
//		try {
//		
//			employeeDetails = employeeMapper.getAllDetails();
//			
//			
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//	return employeeDetails;
//    }
	
	@Transactional
	public List<Employee> getAllDetails() {
		return employeeDao.getAllDetails();
	}
	}
	

