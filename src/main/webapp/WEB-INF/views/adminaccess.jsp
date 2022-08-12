<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>CompanyAdmin Access</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/accesstemplate.css"%></style>
</head>
<body>
	<h1 text-align="center">Welcome CompanyAdmin</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				CompanyAdmin<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/companyadmin/addadminform">Add a New CompanyAdmin</a> <a
					href="/companyadmin/companyadminlist">View all CompanyAdmin
					details</a> <a href="/companyadmin/updateadminbyidform">Update
					CompanyAdmin</a> <a href="/companyadmin/deleteadminbyidform">Delete
					CompanyAdmin</a> <a href="/companyadmin/findadminbyidform">FindByCompanyAdminById</a>

			</div>
		</div>
		

		<div class="dropdown">
			<button class="dropbtn">
				Customer Registration <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/customer/addcustomerform">Add a New Customer</a> <a
					href="/customer/customerlist">View all Customers details</a> <a
					href="/customer/updatecustomeridform">Update Customer</a>
				<div>
					<a href="/customer/deletecustomerform">Delete Customer</a> <a
						href="/customer/findcustomerform">Find ByCustomer</a> <a
						href="/customer/findcustomercarrentalform">Rental Car
						ByCustomerId</a> <a href="/customer/findcustomerreturncarform">Return
						Car ByCustomerId</a>

				</div>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Rentals Cars <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/carrental/addcarrentalform">Add RentalCar to Customer</a>
				<a href="/carrental/carrentallist">View all RntalCars details</a> <a
					href="/carrental/updatecarrentalidform">Update RentalCar</a>
					<a href="/carrental/deletecarrentalidform">Delete
							CarRental</a> <a
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
				</a> <a href="/returncar/returncarlist">View all Customers ReturnCar
					details</a> <a href="/returncar/updatereturncaridform">Update
					ReturnCar</a>
						<a href="/returncar/deletereturncaridform">Delete
								CarReturn</a>
					 <a href="/returncar/findreturncaridform">Find
					ReturnCar</a> <a href="/customer/findcustomerreturncarform">Get
					Customer ReturnCars</a>


			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Car Registration <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/car/addcarform">Add Car
				</a> <a href="/car/carlist">View all Cars
					details</a> <a href="/car/updatecaridform">Update
					Car</a>
						<a href="/car/deletecaridform">Delete
								Car</a>
					 <a href="/car/findcaridform">Find
					Car</a> 

			</div>
		</div>
	</div>

</body>
</html>