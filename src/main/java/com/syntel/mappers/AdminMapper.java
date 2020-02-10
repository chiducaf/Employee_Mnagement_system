package com.syntel.mappers;


import org.apache.ibatis.annotations.Select;

import com.syntel.dto.Admin;

public interface AdminMapper {
	
	@Select("SELECT USERNAME as userName, PASSWORD as password, "
			+ "FIRSTNAME as firstName, LASTNAME as lastName, "
			+ "DATEOFBIRTH as dateOfBirth, EMAILADDRESS as emailAddress "
			+ "FROM admintbl WHERE userName = #{userName}")
	public Admin getAdminByUserName(String userName);
}
