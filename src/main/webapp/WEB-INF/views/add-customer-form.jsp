<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style>
body {
    background-image:
        url("https://images.hdqwalls.com/download/retrowave-car-4k-fr-1366x768.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}</style>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			 <form:form action="add" method="post"
                modelAttribute="addcustomer">
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" />
					</div>
				</div>
				<div>
					<label for="customerPassword">Customer Password</label>
					<div>
						<form:input path="customerPassword" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="mobileNo">Mobile No</label>
					<div>
						<form:input path="mobileNo" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:radiobutton path="gender"  value="Male"/>Male
							<form:radiobutton path="gender"  value="Female"/>Female
							<form:radiobutton path="gender"  value="Transgender"/>Transgender
					</div>
				</div>
				<div>
					<label for="bloodGroup">Blood Group</label>
					<div>
						<form:input path="bloodGroup" />
					</div>
				</div>
				<div>
					<label for="personType">Person Type</label>
					<div>
						<form:radiobutton path="personType" value="Customer"/>Customer
							<form:radiobutton path="personType" value="Owner"/>Owner
				
					</div>
					</div>
					<div>
						<label for="joiningDate">Joining Date</label>
						<div>
							<form:input path="joiningDate" type="date"/>
						</div>
						</div>
						<div>
							<form:button>Add New Customer</form:button>
						</div>
			</form:form>
		</div>
	</div>
</body>
</html>