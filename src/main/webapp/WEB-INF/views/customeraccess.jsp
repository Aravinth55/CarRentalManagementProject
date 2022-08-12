<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Customer Access</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/accesstemplate.css"%></style>
</head>
<body>
	<h1 text-align="center">Welcome Customer</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Customer Registration <em class="fa fa-caret-down"></em>
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
				Rentals Cars <em class="fa fa-caret-down"></em>
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
				Return Cars <em class="fa fa-caret-down"></em>
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