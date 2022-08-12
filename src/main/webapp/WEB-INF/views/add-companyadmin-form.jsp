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
</head>
<body>
	<div class="loginBox">
		<img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px"
			width="100px" alt="image">
		<h3>Sign in here</h3>
		<form:form action="add" method="post" modelAttribute="addcompanyadmin">
			<div class="inputBox">
			<form:input id="userId" type="text" path="userId" name="userId" placeholder="User Id" title="It should be Number Formonly" required="true" />
				<form:input id="userName" path="userName" type="text" name="userName"
					placeholder="User Name"/>
				
				<form:input id="userPassword" path="userPassword" type="password" name="User Password"
					placeholder="User Password" required="true"/>
					
			</div>
				<input type="submit" name="submit" value="Add NewAdmin" >
		</form:form>
	</div>
</body>
</html>