<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to AdminLogin</title>
<style><%@include file="/WEB-INF/css/logintemplate.css"%></style>
<script>
<%@include file="/WEB-INF/javascript/addadminlogin.js"%>
</script>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div class="loginBox">
		<img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px"
			width="100px" alt="image">
		<h3>Admin Registration</h3>
		<form:form action="add" method="post" modelAttribute="addcompanyadmin"  name="myForm">
			<div class="inputBox" >
				<form:input id="userName" path="userName" type="text" name="userName"  onblur="userNameCheck();"
					placeholder="User Name"/>
				
				<form:input id="userPassword" path="userPassword" type="password" name="User Password" onblur="userpasswordCheck();"
					placeholder="User Password" required="true"/>
					
			</div>
				<input type="submit" name="submit" value="Add NewAdmin" >
		</form:form>
	</div>
</body>
</html>