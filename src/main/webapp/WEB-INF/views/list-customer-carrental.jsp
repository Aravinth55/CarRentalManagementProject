<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Customer Car Rentals</title>
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
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: Aquamarine;} /*coral  */
</style>
</head>
<body>
	<div id="root">
		<div id="getcus" align="center">
			<form:form action="" method="post" modelAttribute="getcus">

				<div>
					<label for="customerId">customer Id</label>
					<div>
						<form:input path="customerId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" readonly="true" />
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
						<form:input path="address" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="bloodGroup">Blood Group</label>
					<div>
						<form:input path="bloodGroup" readonly="true" />
					</div>
				</div>
				<div>
					<label for="personType">Person Type</label>
				</div>
				<div>
					<label for="joiningDate">Joining Date</label>
					<div>
						<form:input path="joiningDate" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>

	<div id="rentallist">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th style="background-color:#87CEFA">carRegNo</th>
					<th style="background-color:#87CEFA">customerId</th>
					<th style="background-color:#87CEFA">fromDate</th>
					<th style="background-color:#87CEFA">dueDate</th>
					<th style="background-color:#87CEFA">retailFee</th>
					<th style="background-color:#87CEFA">fuelLevel</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="carrental" items="${rentallist}">
					<tr>
						<td>${carrental.carRegno}</td>
						<td>${carrental.customerId}</td>
						<td>${carrental.fromDate}</td>
						<td>${carrental.dueDate}</td>
						<td>${carrental.retailFee}</td>
						<td>${carrental.fuelLevel}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>