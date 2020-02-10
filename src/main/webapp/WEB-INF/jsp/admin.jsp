<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
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
				<h1><center>WELCOME TO EMPLOYEE MANAGEMNET SYSTEM</center></h1>
			
			</div>

	<h2><center>--------------------ADMIN PORTAL----------------------</center></h2>

	<div>
						<form:form id="myForm1" method="post"
							 commandName="adminLogin">
							<fieldset><center>
								<legend>Employee Enrollment Login Form</legend>
								<br>
									<label for="userNameInput" >User
										Name</label>
									
										<form:input type="text"  path="userName"
											id="userNameInput" placeholder="User Name" />
										<form:errors path="userName" cssClass="error" />
								
<br><br>
							
								<label for="passwordInput" >Password</label>
									&nbsp;
										<form:input type="password" 
											path="password" id="passwordInput" placeholder="Password" />
										<form:errors path="password" cssClass="error" />
									

							<br><br>
									

									<button class="ad">Login</button>
								


							</fieldset></center>
						</form:form>
					</div>
	
</body>
</html>