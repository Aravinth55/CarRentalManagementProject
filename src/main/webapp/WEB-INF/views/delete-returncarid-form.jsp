<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete ReturnCar</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<h3>Delete ReturnCar ByCustomerId</h3>
	<br>
	<form action="/returncar/deletereturncar" method="get"
		style="text-align:center ;margin-top:5%;">
		<label>Enter Car Registration Number</label>
		 <input type="text"	placeholder="Car RegNo" name="carregno">
		 
		  <label>Enter Customer Id</label> 
			<input type="text" placeholder="Customer Id" name="cusid">
		<input type='submit' value="submit" name="submit">
	</form>

</body>
</html>