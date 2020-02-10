package com.syntel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.syntel.dto.Admin;
import com.syntel.mappers.AdminMapper;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Transactional
	public boolean getAdminByLogin(String userName, String password) {
		Admin admin = adminMapper.getAdminByUserName(userName);
		
		if(admin != null && admin.getPassword().equals(password)) {
			return true;
		}
		
		return false;
	}
	public boolean getAdminByUserName(String userName) {
		Admin admin = adminMapper.getAdminByUserName(userName);
		
		if(admin != null) {
			return true;
		}
		
		return false;
	}
}
