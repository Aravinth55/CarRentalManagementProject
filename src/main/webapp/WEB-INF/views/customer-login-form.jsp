<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Page</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="customerlogin" method="post" modelAttribute="cuslogin">
				<h1>Customer Login</h1>
				<table>
					<tr>
						<td><label for="customerId">CustomerId :</label></td>
						<td><form:input path="customerId" placeholder="CustomerId" /></td>
					</tr>
					<tr>
						<td><label for="customerPassword">CustomerPassword :</label></td>
						<td><form:input path="customerPassword" type="password"
								placeholder="CustomerPassword" /></td>
					</tr>
				</table>
				<div>
					<tr>
						<td><form:button>Sign In</form:button></td>
						<td><form:button>
								<a href="/customer/addcustomerform">Sign Up</a>
							</form:button></td>
					</tr>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>