<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<style><%@include file="/WEB-INF/css/listimage.css"%></style>
</head>
<body>
	<div id="table root">
		<table>
		<caption>Customer list</caption>
			<thead>
				<tr>
					<th style="background-color: #87CEFA">Customer Id</th>
					<th style="background-color: #87CEFA">Customer Name</th>
					<th style="background-color: #87CEFA">Customer Password</th>
					<th style="background-color: #87CEFA">Address</th>
					<th style="background-color: #87CEFA">Mobile No</th>
					<th style="background-color: #87CEFA">gender</th>
					<th style="background-color: #87CEFA">Blood Group</th>
					<th style="background-color: #87CEFA">Person Type</th>
					<th style="background-color: #87CEFA">Joining Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cus" items="${allcustomers}">
					<tr>
						<td>${cus.customerId}</td>
						<td>${cus.customerName}</td>
						<td>${cus.customerPassword}</td>
						<td>${cus.address}</td>
						<td>${cus.mobileNo}</td>
						<td>${cus.gender}</td>
						<td>${cus.bloodGroup}</td>
						<td>${cus.personType}</td>
						<td>${cus.joiningDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<h3>
				<a href="/home/hello">Back To MainPage</a>
			</h3>
		</div>
	</div>

</body>
</html>