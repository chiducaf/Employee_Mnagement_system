<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<style>
.ad{
background-color: #123c69; color:white;
    font-size: 14px;
    font-weight: bold;
    border: none;
     padding: 4px 10px;text-decoration: none;
     }
     .asdf{
     align:center;
color:green;
    font-size: 26px;
   
    border: 1px;
     
     }
</style>

</head>
<body>
<div><center>
 <c:if test="${not empty message}">
		<div class="asdf">${message}</div>
	</c:if></center>
</div>
<br><center>
<div>
			<a href="/EmployeeManagementSystem" class="ad">Home </a> &nbsp;
				<a href="signup.html" class="ad">Add Employee </a> &nbsp;
				<a class="ad"href="viewdetails.html">View » </a>&nbsp;<br><br>
	&nbsp; <a href="admin.html" class="ad">admin  </a> 
	
	
	
				
				</div>
<div>
			<h2>------------------ADMIN-------------------</h2>
		</div>
		<div>
				
				<strong>Well done!</strong> You successfully logged-into the system.
				Now you can explore the complete features!
			</div>
		
	<div>
	<a href="<spring:url value="admin.html"/>">Login
		as different user?</a></div></center>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
</body>
</html>