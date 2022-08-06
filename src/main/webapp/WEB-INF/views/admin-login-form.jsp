<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
� body {
  background: url("https://in.pinterest.com/pin/jeep-wrangler-megaport-media--815081232545467262/")
   no-repeat center fixed;
  background-size: cover;
}
</style>

</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="companyuserlogin" method="post" modelAttribute="login">
				<h1>CompanyAdmin Login</h1>
				<table>
					<tr>
						<td><label for="userId">UserId :</label></td>
						<td><form:input path="userId" placeholder="UserId" /></td>
					</tr>
					<tr>
						<td><label for="userPassword">UserPassword :</label></td>
						<td><form:input path="userPassword" type="password"
								placeholder="UserPassword" /></td>
					</tr>
				</table>
				<div>
					<tr>
						<td><form:button>Sign In</form:button></td>
						<td><form:button>
								<a href="/companyadmin/addadminform">Sign Up</a>
							</form:button></td>
					</tr>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>