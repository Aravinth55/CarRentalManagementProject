<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Page</title>
<style>
body {
    background-image:
        url("https://wallpapersmug.com/download/1366x768/27aaa0/rolls-royce-phantom-4k.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}</style>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="customerlogin" method="post" modelAttribute="cuslogin">
				<h1>Customer Login</h1>
				
						<div><label for="customerId">CustomerId :</label></div>
					<div>	<form:input path="customerId" placeholder="CustomerId" /></div>
					<div>
						<label for="customerPassword">CustomerPassword :</label></div>
						<div><form:input path="customerPassword" type="password"
								placeholder="CustomerPassword" /></div>
				<div>
						<form:button>Sign In</form:button></div>
						<div><form:button>
								<a href="/customer/addcustomerform">Sign Up</a>
							</form:button><div></div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>