<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to AdminLogin</title>
<script type="text/javascript">
function dateCalculation(){
	var date1 = document.getElementById("fromDate").value;
	var date2 = document.getElementById("dueDate").value;
	var date3 = new Date(date1);
	var date4 = new Date(date2);
	//var date1 = new Date("7/11/2010");
	//var date2 = new Date("8/11/2010");
	var total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10); 
	document.getElementById("retailFee").value = parseInt(total)*1000;
	return parseInt(total);
}

</script>
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
	width: 500px;
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

.loginBox input[type="text"], .loginBox input[type="password"], .loginBox input[type="date"] {
	border: none;
	border-bottom: 2px solid #262626;
	outline: none;
	height: 30px;
	color: #fff;
	background: transparent;
	font-size: 16px;
	padding-left: 20px;
	box-sizing: border-box
}

.loginBox input[type="text"]:hover, .loginBox input[type="password"]:hover,  .loginBox input[type="date"]:hover
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
		<!-- <img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px"
			width="100px"> -->
		<h3>Sign in here</h3>
		<form:form action="add" method="post"  modelAttribute="addcarrental" >
			<div class="inputBox">
				<input id="carRegno" type="text" name="carRegno" placeholder="carRegno">
				 <div>
                        <form:select path="carRegno">
                            <c:forEach var="allcars" items="${allCars}">
                                <form:option value="${allcars.carRegno}"
                                    label="${allcars.carRegno}" />
                            </c:forEach>
                        </form:select>
                    </div>
				<input id="customerId" type="text" name="customerId"
					placeholder="customerId">
					<div>
                        <form:select path="customerId">
                            <c:forEach var="allcustomers" items="${allCustomer}">
                                <form:option value="${allcustomers.customerId}"
                                    label="${allcustomers.customerId}" />
                            </c:forEach>
                        </form:select>
                    </div>
					<input id="fromDate" type="date" name="fromDate"
					placeholder="fromDate">
					<input id="dueDate" type="date" name="dueDate"
					placeholder="dueDate">
					<input id="retailFee" type="text" name="retailFee"
					placeholder="retailFee">
					<input id="fuelLevel" type="text" name="fuelLevel"
					placeholder="fuelLevel">
					<input id="workingCondition" type="text" name="workingCondition"
					placeholder="workingCondition">
										</div>
			<input type="submit" name="" value="AddNewCustomer">
				</form:form>
		<!-- <a href="#">Forget Password<br>
		</a> -->
		<!-- <div class="text-center">
			<p style="color: #59238F;">
				<a href="/companyadmin/addadminform">Sign-Up</a>
			</p> -->
		</div>
	
</body>
</html>