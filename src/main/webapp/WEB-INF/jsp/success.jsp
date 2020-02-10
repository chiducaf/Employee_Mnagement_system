<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>

<style>
.ad{
background-color: #123c69; color:white;
    font-size: 14px;
    font-weight: bold;
    border: none;
     padding: 4px 10px;text-decoration: none;
     }
</style>
</head>
<body>
	
<div><center>
			<a href="/EmployeeManagementSystem"  class="ad">Home </a> &nbsp;
				 &nbsp;
<a href="login.html"  class="ad">Employee  </a>&nbsp;<a href="admin.html"  class="ad">admin  </a> 
				</center>
				</div>



	
	<div>
			<h3>Employee Enrollment Login Success</h3>
		</div>
		<div>
				
				<strong>Well done!</strong> You successfully logged-into the system.
				Now you can explore the complete features!
			</div>
		
	<div></div>
	<div></div>
	<a href="<spring:url value="login.html"/>">Login
		as different user?</a>
</body>
</html>