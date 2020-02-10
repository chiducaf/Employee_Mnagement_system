package com.syntel.service;

import com.syntel.dto.Admin;

public interface AdminService {
	boolean getAdminByLogin(String userName, String password);
	boolean getAdminByUserName(String userName);
}
