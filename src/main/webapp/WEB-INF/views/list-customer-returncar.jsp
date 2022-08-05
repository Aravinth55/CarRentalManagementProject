<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Customer ReturnCars</title>
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

	<div id="returncarlist">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>CarRegNo</th>
					<th>CustomerId</th>
					<th>FromDate</th>
					<th>DueDate</th>
					<th>PayElapsed</th>
					<th>CarFine</th>
					<th>TotalFee</th>
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
	</div>
</body>
</html>