<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer Registration</title>
<style>
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
	<h3>Update Customer Registration</h3>
	<br>
	<form action="/customer/updatecustomerform" method="get"
		style="text-align:center ;margin-top:5%;">
		<label>Enter Customer Id</label> <input type="text"
			placeholder="Customer Id" name="cusid"> <input type='submit'
			value="submit" name="submit">
	</form>

</body>
</html>