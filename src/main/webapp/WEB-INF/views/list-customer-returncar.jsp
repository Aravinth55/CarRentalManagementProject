<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Customer ReturnCars</title>
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
		<div id="getcus" text-align="center">
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

	<div id="returncarlist">
		<table>
		<caption>ReturnCar List</caption>
			<thead>
				<tr>
					<th style="background-color:#87CEFA">CarRegNo</th>
					<th style="background-color:#87CEFA">CustomerId</th>
					<th style="background-color:#87CEFA">FromDate</th>
					<th style="background-color:#87CEFA">DueDate</th>
					<th style="background-color:#87CEFA">PayElapsed</th>
					<th style="background-color:#87CEFA">CarFine</th>
					<th style="background-color:#87CEFA">TotalFee</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="returncar" items="${returncarlist}">
					<tr>
						<td>${returncar.carRegno}</td>
						<td>${returncar.customerId}</td>
						<td>${returncar.fromDate}</td>
						<td>${returncar.dueDate}</td>
						<td>${returncar.payElapsed}</td>
						<td>${returncar.carFine}</td>
						<td>${returncar.totalFee}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		 <div><h4><a href="/home/hello">Back To MainPage</a></h4></div>
	</div>
	
</body>
</html>