<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to CustomerLogin </title>
<style><%@include file="/WEB-INF/css/logintemplate.css"%></style>
</head>
<body>
	<div class="loginBox">
		<img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px"
			width="100px" alt="image">
		<h3>Sign in here</h3>
		<form action="customerlogin"  method="post">
			<div class="inputBox">
				<input id="customerId" type="text" name="customerId" placeholder="Customer Id" title="It should be Number Format"
				 pattern="^[0-9]+$" required="true">
				<input id="customerPassword" type="password" name="customerPassword"
					placeholder="Customer Password" required="true">
			</div>
			<input type="submit" name="" value="Login">
		</form>
		
		<div class="text-center">
			<p style="color: #59238F;"><a  href="/customer/addcustomerform">Sign-Up</a></p>
		</div>

	</div>
</body>
</html>