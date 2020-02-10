<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE REGISTRATION </title>




<style>
.ad{
background-color: #123c69; color:white;
    font-size: 14px;
    font-weight: bold;
    border: none;
     padding: 4px 10px;text-decoration: none;
     }

.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
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
			

<div>
				<h1>WELCOME TO EMPLOYEE MANAGEMNET SYSTEM</h1>
			
			</div>

	
	<div><h2>----------------------EMPLOYEE PORTAL--------------------------</h2></div>

	
<div>
	
						<form:form id="myForm" method="post"
							 commandName="student">
							<fieldset>
								<legend>Employee Signup Form</legend>

								<div>
									<label for="userNameInput" >User
										Name</label>
									
										<form:input type="text"  path="userName"
											id="userNameInput" placeholder="User Name" />
										<form:errors path="userName" cssClass="error" />
									

								
									<label for="passwordInput" >Password</label>
									
										<form:input type="password" 
											path="password" id="passwordInput" placeholder="Password" />
										<form:errors path="password" cssClass="error" />
									
								</div><br><br>
<div>
								
									<label for="firstNameInput">First
										Name</label>
									
										<form:input type="text"  path="firstName"
											id="firstNameInput" placeholder="First Name" />
										<form:errors path="firstName" cssClass="error" />
									
							

								
									<label for="lastNameInput" >Last
										Name</label>
								
										<form:input type="text"  path="lastName"
											id="lastNameInput" placeholder="Last Name" />
										<form:errors path="lastName" cssClass="error" />
								
</div><br><br><div>
								
									<label for="dateOfBirthInput">Date
										of Birth</label>
									
										<form:input type="text" 											
											path="dateOfBirth" id="dateOfBirthInput"
											placeholder="Date of Birth" />
										<form:errors path="dateOfBirth" cssClass="error" />
									
								
</div><br><br><div>
								
									<label for="emailAddressInput" >Email
										Address</label>
									
										<form:input type="text" 
											path="emailAddress" id="emailAddressInput"
											placeholder="Email Address" />
										<form:errors path="emailAddress" cssClass="error" />
								
								</div><br><br><div>
									

									<button>Submit</button>
							
 <input  type="button" value="<--back"onclick="history.go(-1);" />
							<div>

							</fieldset>
						</form:form>
		

	</div>
	


</body>
</html>