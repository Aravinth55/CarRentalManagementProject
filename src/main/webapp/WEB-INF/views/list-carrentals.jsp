<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
  color: "FF4500";
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: Aquamarine;} /*coral  */
</style>
<title>Car Rental List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2" >
			<thead>
				<tr>
					<th style="background-color:#87CEFA">Car RegistrationNo</th>
					<th style="background-color:#87CEFA">Customer Id</th>
					<th style="background-color:#87CEFA">From Date</th>
					<th style="background-color:#87CEFA">Due Date</th>
					<th style="background-color:#87CEFA">Retail Fee</th>
					<th style="background-color:#87CEFA">Fuel Level</th>
					<th style="background-color:#87CEFA">Working Condition</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ren" items="${allcarrentals}">
					<tr>
						<td >${ren.carRegno}</td>
						<td>${ren.customerId}</td>
						<td>${ren.fromDate}</td>
						<td>${ren.dueDate}</td>
						<td>${ren.retailFee}</td>
						<td>${ren.fuelLevel}</td>
						<td>${ren.workingCondition}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
