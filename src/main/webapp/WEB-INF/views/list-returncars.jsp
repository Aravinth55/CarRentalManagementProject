<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Return Cars List</title>
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
	<div id="table root">
		<table >
		<caption>Return Car list</caption>
			<thead>
				<tr>
					<th style="background-color:#87CEFA">Car RegistrationNo</th>
					<th style="background-color:#87CEFA">Customer Id</th>
					<th style="background-color:#87CEFA">From Date</th>
					<th style="background-color:#87CEFA">Due Date</th>
					<th style="background-color:#87CEFA">Pay Elapsed</th>
					<th style="background-color:#87CEFA">Car Fine</th>
					<th style="background-color:#87CEFA">Total Fee</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ret" items="${allreturncars}">
					<tr>
						<td>${ret.carRegno}</td>
						<td>${ret.customerId}</td>
						<td>${ret.fromDate}</td>
						<td>${ret.dueDate}</td>
						<td>${ret.payElapsed}</td>
						<td>${ret.carFine}</td>
						<td>${ret.totalFee}</td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
		 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
	</div>
	
</body>
</html>
