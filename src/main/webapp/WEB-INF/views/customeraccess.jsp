<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Access</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-image:
		url("https://www.teahub.io/photos/full/259-2593536_car-drift-4k-hd.jpg");
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
}

h1 {
	font-family: lucida Handwriting, Cursive;
	color: white;
}

.navbar {
	overflow: hidden;
	background-color: #38fca4;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: #000000;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: #fa6e6e;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #0abab5;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<h1 align="center">Welcome Customer</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Customer Registration <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/customer/addcustomerform">Add a New Customer</a> <a
					href="/customer/updatecustomeridform">Update Customer</a>
				<div>
					<a href="/customer/findcustomerform">Find ByCustomer</a>

				</div>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Rentals Cars <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/carrental/addcarrentalform">Add RentalCar to Customer</a>
				<a href="/carrental/updatecarrentalidform">Update RentalCar</a> <a
					href="/carrental/findcarrentalidform">Find RentalCars</a> <a
					href="/customer/findcustomercarrentalform">Get
					CustomerRentalCars</a>

			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Return Cars <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/returncar/addreturncarform">Add ReturnCar for Customer
				</a> <a href="/returncar/updatereturncaridform">Update ReturnCar</a> <a
					href="/returncar/findreturncaridform">Find ReturnCar</a> <a
					href="/customer/findcustomerreturncarform">Get Customer
					ReturnCars</a>


			</div>
		</div>
	</div>

</body>
</html>