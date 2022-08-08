<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
<style>   
body {
    background-image: url("https://as2.ftcdn.net/v2/jpg/01/13/05/49/1000_F_113054950_ZICHXvV3MGY8nGoBuZYKZ9iMacgbsclI.jpg");
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
	<div align="center">
		<div>
			<h1>Customer Registration</h1>
		</div>
		<div>

			<h3>
				<div>
					<div><a href="/customer/customerlist">CustomerRegistration List</a></div>
	</div>


			</h3>
		</div>
		<div>
			<h3>
				<div>
				<div><a href="/customer/addcustomerform">Add CustomerRegistration</a></div>
	</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
				<div><a href="/customer/updatecustomerform?cusid=">Update CustomerRegistration</a></div>
</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
			<div><a href="/customer/deletecustomer?cusid=">Delete CustomerRegistration</a></div>
	</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
			<div><a href="/customer/findcustomerbyid?cusid=">Find ByCustomerId</a></div>
	</div>
			</h3>
		</div>
	</div>
</body>
</html>