<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car List</title>
<style type="text/css">
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: Aquamarine;  /*coral  */
}
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
	<div id="table root">
	<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th style="background-color:#87CEFA">Car RegistrationNo</th>
					<th style="background-color:#87CEFA">Owner Id</th>
					<th style="background-color:#87CEFA">Car Model</th>
					<th style="background-color:#87CEFA">Car Color</th>
					<th style="background-color:#87CEFA">Fuel Type</th>
					<th style="background-color:#87CEFA">Car Capacity</th>
					<th style="background-color:#87CEFA">Car Available</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="car" items="${allcars}">
					<tr>
						<td>${car.carRegno}</td>
						<td>${car.ownerId}</td>
						<td>${car.carModel}</td>
						<td>${car.carColour}</td>
						<td>${car.fuelType}</td>
						<td>${car.carCapacity}</td>
						<td>${car.carAvailable}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
