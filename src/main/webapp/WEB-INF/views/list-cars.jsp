<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
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
    background-image: url("https://cdn.wallpapersafari.com/60/8/fUDlIm.jpg");
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
	<table>
	<caption>Car list</caption>
			<thead>
				<tr>
					<th style="background-color:#87CEFA">Car RegistrationNo</th>
					<th style="background-color:#87CEFA">Owner Id</th>
					<th style="background-color:#87CEFA">Car Model</th>
					<th style="background-color:#87CEFA">Car Color</th>
					<th style="background-color:#87CEFA">Fuel Type</th>
					<th style="background-color:#87CEFA">Car Capacity</th>
					<th style="background-color:#87CEFA">Car Available</th>
					<th style="background-color:#87CEFA">Edit Car</th>
					<th style="background-color:#87CEFA">Delete Car</th>
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
						<td><a  href="updatecarform?carregno=${car.carRegno}">Edit Car</a></td>
						<td><a  href="deletecar?carregno=${car.carRegno}">Delete Car</a></td>
						<td><a ></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	 <div><h3><a href="/home/hello"><strong>Back To MainPage</strong></a></h3></div>
	</div>
</body>
</html>
