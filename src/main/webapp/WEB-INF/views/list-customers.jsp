<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Customer Id</th>
					<th>Customer Name</th>
					<th>Customer Password</th>
					<th>Address</th>
					<th>Mobile No</th>
					<th>gender</th>
					<th>Blood Group</th>
					<th>Person Type</th>
					<th>Joining Date</th>
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
	</div>
</body>
</html>