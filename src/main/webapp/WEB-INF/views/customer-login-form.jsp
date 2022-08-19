<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to CustomerLogin</title>
<style><%@include file="/WEB-INF/css/logintemplate.css"%></style>
<script>
<%@include file="/WEB-INF/javascript/customerlogin.js"%>
</script>

</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div class="loginBox">
		<img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px"
			width="100px" alt="image">
		<h3>Customer Login</h3>
		<form action="customerlogin"  method="post"  name="myForm">
			<div class="inputBox">
				<input id="customerName" type="text" name="customerName" onblur="CustomerNameCheck();" placeholder="Customer Name" title="It should be Alphabet only"
				 pattern="^[A-Za-z\s]*$" required="true">
				<input id="customerPassword" type="password" name="customerPassword"  onblur="customerpasswordCheck();"
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