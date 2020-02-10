<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
.ad{
background-color: #123c69; color:white;
    font-size: 14px;
    font-weight: bold;
    border: none;
     padding: 4px 10px;text-decoration: none;
     }
</style>


<title>EMPLOYEE MANAGEMENT SYSTEM</title>
</head>
<body>

<div><center>
			<a href="/EmployeeManagementSystem"  class="ad">Home </a> &nbsp;
				 &nbsp;
<a href="login.html"  class="ad">Employee  </a>&nbsp;<a href="admin.html"  class="ad">admin  </a> 
				</center>
				</div>

				<h1>WELCOME TO EMPLOYEE MANAGEMNET SYSTEM</h1>
			
			</div>

	<div><h2>-------------------EMPLOYEE PORTAL---------------------</h2></div>

	<div>
						<form:form id="myForm" method="post"
							 commandName="employeeLogin">
							<fieldset>
								<legend>Employee Enrollment Login Form</legend>
								
									<label for="userNameInput" >User
										Name</label>
									
										<form:input type="text"  path="userName"
											id="userNameInput" placeholder="User Name" />
										<form:errors path="userName" cssClass="error" />
								

							
									<label for="passwordInput" >Password</label>
									
										<form:input type="password" 
											path="password" id="passwordInput" placeholder="Password" />
										<form:errors path="password" cssClass="error" />
									

								
									

									<button>Login</button>
								


							</fieldset>
						</form:form>
					</div>
	

</body>
</html>