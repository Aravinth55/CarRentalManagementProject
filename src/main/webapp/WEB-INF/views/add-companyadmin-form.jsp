<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to AdminLogin</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background: url(https://i.ibb.co/VQmtgjh/6845078.png) no-repeat;
	height: 80vh;
	font-family: sans-serif;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	overflow: hidden
}

@media screen and (max-width: 600px;) {
	body {
		background-size: cover;
		:
		fixed
	}
}

#particles-js {
	height: 100%
}

.loginBox {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 600px;
	min-height: 100px;
	background: #000000; /*  #FFFFFF */
	border-radius: 10px;
	padding: 40px;
	box-sizing: border-box
}

.user {
	margin: 0 auto;
	display: block;
	margin-bottom: 20px
}

h3 {
	margin: 0;
	padding: 0 0 20px;
	color: #59238F;
	text-align: center
}

.loginBox input {
	width: 100%;
	margin-bottom: 20px
}

.loginBox input[type="text"], .loginBox input[type="password"] {
	border: none;
	border-bottom: 2px solid #262626;
	outline: none;
	height: 40px;
	color: #fff;
	background: transparent;
	font-size: 16px;
	padding-left: 20px;
	box-sizing: border-box
}

.loginBox input[type="text"]:hover, .loginBox input[type="password"]:hover
	{
	color: #42F3FA;
	border: 1px solid #42F3FA;
	box-shadow: 0 0 5px rgba(0, 255, 0, .3), 0 0 10px rgba(0, 255, 0, .2), 0
		0 15px rgba(0, 255, 0, .1), 0 2px 0 black
}

.loginBox input[type="text"]:focus, .loginBox input[type="password"]:focus
	{
	border-bottom: 2px solid #42F3FA
}

.inputBox {
	position: relative
}

.inputBox span {
	position: absolute;
	top: 10px;
	color: #262626
}
.text-danger{
color:white;}

.loginBox input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	font-size: 16px;
	background: #59238F;
	color: #fff;
	border-radius: 20px;
	cursor: pointer
}

.loginBox a {
	color: #262626;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
	text-align: center;
	display: block
}

a:hover {
	color: #00ffff
}

p {
	color: #0000ff
}
</style>
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
					<%-- <div class="error" style="background-color:red"><form:errors path="userPassword" cssClass="text-danger" />
					</div> --%>
			</div>
				<input type="submit" name="submit" value="Add NewAdmin" >
		</form:form>
	</div>
</body>
</html>