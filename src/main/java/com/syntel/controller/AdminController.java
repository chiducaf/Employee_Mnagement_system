package com.syntel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;




import com.syntel.dto.AdminLogin;
import com.syntel.service.AdminService;


@Controller
@SessionAttributes("student")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	
	
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin(Model model) {
		AdminLogin adminLogin = new AdminLogin();
		model.addAttribute("adminLogin", adminLogin);
		return "admin";
	}
	
	@RequestMapping(value="/admin", method=RequestMethod.POST)
	public String admin(@ModelAttribute("adminLogin") AdminLogin adminLogin) {
		boolean found = adminService.getAdminByLogin(adminLogin.getUserName(), adminLogin.getPassword());
		if (found) {				
			return "adminpg";
		} else {				
			return "adminfailure";
		}
	}
	
	@RequestMapping(value="/admin1", method=RequestMethod.GET)
	public String admin1(Model model) {
		AdminLogin adminLogin = new AdminLogin();
		model.addAttribute("adminLogin", adminLogin);
		model.addAttribute("message", "Saved employee details");
		return "adminpg";
	}
}
