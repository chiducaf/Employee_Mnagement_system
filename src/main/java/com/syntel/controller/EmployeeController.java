package com.syntel.controller;




import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.SessionAttributes;


import com.syntel.dto.Employee;

import com.syntel.dto.EmployeeLogin;

import com.syntel.service.EmployeeService;

@Controller
@SessionAttributes("student")
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
//	private AdminService adminService;
	
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(Model model) {
		Employee employee = new Employee();
		model.addAttribute("student", employee);
		return "signup";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signup(@ModelAttribute("student") Employee employee, Model model) {
		if(employeeService.getEmployeeByUserName(employee.getUserName())) {
			model.addAttribute("message", "User Name exists. Try another user name");
			return "signup";
		} else {
			employeeService.insertEmployee(employee);
			model.addAttribute("message", "Saved employee details");
			return "redirect:admin1.html";
		}
	}
	
//	@RequestMapping(value="/viewdetails", method=RequestMethod.GET)
//	public String view(Model model) {
//		Employee employee = new Employee();
//		model.addAttribute("Employee", employee);
//		System.out.println("--------------------------1----------------");
//		return "viewdetails";
//	}
//	@RequestMapping(value="/viewdetails", method=RequestMethod.POST)
//	public String view(@ModelAttribute("employee") Employee employee,Model model) {
//		System.out.println("--------------------------2----------------");
//	boolean empdtl=	employeeService.getAllDetails(employee.getUserName(),employee.getFirstName(),
//				employee.getLastName(),employee.getPassword(),employee.getEmailAddress());
//		if (empdtl) {	
//			model.addAttribute("username",employee.getUserName());
//			return "viewdetails";
//		} else {				
//			return "failure";
//		}
//	}
//	
	
	
	
//	@RequestMapping(value="/viewdetails", method=RequestMethod.GET)
//	public String view(@ModelAttribute("employee") List<Employee> employee) throws Exception {
//		System.out.println("--------------------------rgyusfghfdg----------------");
//	//	List<Employee> employees = employeeService.getAllDetails();
//		return "viewdetails";
//		
//		
//		
//	}
	
	
//	@RequestMapping(value="/view")
//	public @ResponseBody List<Employee> getAllDetails(@RequestBody Employee employee) throws Exception {
//		System.out.println("--------------------------rgyusfghfdg----------------");
//		List<Employee> employeeDetails = null;
//		try {
//			System.out.println("--------------------------rgyusfghfdg----------------");
//			employeeDetails = employeeService.getAllDetails(employee);
//		//	model.addAttribute("list", employeeDetails);
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//		System.out.println("--------------------------rgyusfghfdg----------------");
//			return employeeDetails;
//    }
//	@RequestMapping(value="/viewdetails", method=RequestMethod.GET)
//	public String view(Model model) {
//		Employee employee = new Employee();
//		model.addAttribute("student", employee);
//		System.out.println("--------------------------1----------------");
//		return "viewdetails";
//	
//	}
//	@RequestMapping(value="/viewdetails", method=RequestMethod.GET)
//	public String view(@ModelAttribute("employee") Employee employee,Model model) {
//		System.out.println("--------------------------2----------------");
//	
//		if (employeeService.getAllDetails(employee.getUserName(),employee.getFirstName(),
//				employee.getLastName(),employee.getPassword(),employee.getEmailAddress()))
//		{	
//			List<Employee> employeeDetails = null;
//			employeeDetails=<Employee>employeeService.getAllDetails(employee.getUserName(),employee.getFirstName(),
//					employee.getLastName(),employee.getPassword(),employee.getEmailAddress());
//			for(Employee emp1 : employeeDetails)
//			model.addAttribute("username",employee.getUserName());
//			return "viewdetails";
//		} else {				
//			return "failure";
//		}
//	}
	
	@RequestMapping("/viewdetails")
	public String listOfDetails(Model model) {
		System.out.println("-------------1------------");
		System.out.println(employeeService.getAllDetails());
		model.addAttribute("employeeList", employeeService.getAllDetails());
		model.addAttribute("username",employeeService.getAllDetails());
		System.out.println(model);
		System.out.println(model);
		return "viewdetails";
	}
	
	
	
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model) {
		EmployeeLogin employeeLogin = new EmployeeLogin();
		model.addAttribute("employeeLogin", employeeLogin);
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@ModelAttribute("employeeLogin") EmployeeLogin employeeLogin) {
		boolean found = employeeService.getStudentByLogin(employeeLogin.getUserName(), employeeLogin.getPassword());
		if (found) {				
			return "success";
		} else {				
			return "failure";
		}
	}
	
	
}
