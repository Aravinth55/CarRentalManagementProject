<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
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
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" style="text-align:center ;margin-top:5%;">
			<form:form action="updatecus" method="post"
				modelAttribute="updatecustomer">
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" placeholder="Customer Id" />
					</div>
				</div>
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" placeholder="Customer Name" />
					</div>
				</div>
				<form:errors path="customerName" cssClass="text-danger" />

				<div>
					<label for="customerPassword">Customer Password</label>
					<div>
						<form:input path="customerPassword"
							placeholder="Customer Password" />
					</div>
				</div>
				<form:errors path="customerPassword" cssClass="text-danger" />

				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" placeholder="Address" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />

				<div>
					<label for="mobileNo">Mobile No</label>
					<div>
						<form:input path="mobileNo" placeholder="Mobile No" title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<form:errors path="mobileNo" cssClass="text-danger" />

				<div>
					<label for="gender">Gender</label>
					<div>
						<form:radiobutton path="gender"  value="Male"/>Male
							<form:radiobutton path="gender"  value="Female"/>Female
							<form:radiobutton path="gender"  value="Transgender"/>Transgender
					</div>
				</div>
				<form:errors path="gender" cssClass="text-danger" />

				<div>
					<label for="bloodGroup">Blood Group</label>
					<div>
						<form:input path="bloodGroup" placeholder="Blood Group" />
					</div>
				</div>
				<form:errors path="bloodGroup" cssClass="text-danger" />

				<div>
					<label for="personType">Person Type</label>
					<div>
						<form:radiobutton path="personType" value="Customer"/>Customer
							<form:radiobutton path="personType" value="Owner"/>Owner
					</div>
				</div>
				<form:errors path="personType" cssClass="text-danger" />

				<div>
					<label for="joiningDate">Joining Date</label>
					<div>
						<form:input path="joiningDate" type="date"
							placeholder="Joining Date" />
					</div>
				</div>

				<div>
					<form:button>Update Customer</form:button>
				</div>
			</form:form>
		</div>
	</div>
	 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
</body>
</html>