<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete CarRental</title>
<style type="text/css">
body {
    background-image: url("https://cdn.wallpapersafari.com/60/8/fUDlIm.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
</style>
</head>
<body>
	<h3>Delete CarRental</h3>
	<br>
	<form action="/carrental/deletecarrental" method="get"
		style="text-align:center ;margin-top:5%;">
		<label>Enter Car Registration Number</label>
		 <input type="text"	placeholder="Car RegNo" name="carregno">
		 
		  <label>Enter Customer Id</label> 
			<input type="text" placeholder="Customer Id" name="cusid">
		<input type='submit' value="submit" name="submit">
	</form>

</body>
</html>