<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
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
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th style="background-color:#87CEFA">Customer Id</th>
					<th style="background-color:#87CEFA">Customer Name</th>
					<th style="background-color:#87CEFA">Customer Password</th>
					<th style="background-color:#87CEFA">Address</th>
					<th style="background-color:#87CEFA">Mobile No</th>
					<th style="background-color:#87CEFA">gender</th>
					<th style="background-color:#87CEFA">Blood Group</th>
					<th style="background-color:#87CEFA">Person Type</th>
					<th style="background-color:#87CEFA">Joining Date</th>
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