<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Page</title>
</head>
<body>






<table border="1">
			<tr>
				<th>UserName</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Password</th>
				<th>DateOfBirth</th>
				<th>EmailAddress</th>
			</tr>
			<c:forEach items="${employeeList}" var="s">
				 
							<tr>
					<td>${s.userName}</td>
				<td>${s.firstName}</td>
						<td>${s.lastName}</td>
				<td>${s.password}</td>
				<td>${s.dateOfBirth}</td>
				<td>${s.emailAddress}</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>