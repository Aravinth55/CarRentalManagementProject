<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Customer Car Rentals</title>
</head>
<body>
	<div id="root">
		<div id="getcus">
			<form:form action="" method="post" modelAttribute="getcus">
				<div>
				<label for="carRegno">carRegno</label>
				<div>
					<form:input path="carRegno" readonly="true"/>
				</div>
			</div>
			<div>
				<label for="ownerId">ownerId</label>
				<div>
					<form:input path="ownerId" readonly="true"/>
				</div>
			</div>
			<div>
				<label for="carMake">carMake</label>
				<div>
					<form:input path="carMake" readonly="true"/>
				</div>
			</div>
			<div>
				<label for="carModel">carModel</label>
				<div>
					<form:input path="carModel" readonly="true"/>
				</div>
			</div>
			<div>
				<label for="carColour">carColour</label>
				<div>
					<form:input path="carColour" readonly="true"/>
				</div>
			</div>
			<div>
				<label for="fuelType">fuelType</label>
				<div>
					<form:input path="fuelType" readonly="true"/>
				</div>
			</div>
			<div>
				<label for="carCapacity">carCapacity</label>
				<div>
					<form:input path="carCapacity" readonly="true"/>
				</div></div>
			</form:form>
		</div>
		<div id="rentallist">
		<table>
			<thead>
				<tr>
					<th>carRegNo</th>
					<th>customerId</th>
					<th>fromDate</th>
					<th>dueDate</th>
					<th>retailFee</th>
					<th>fuelLevel</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="carrental" items="${rentallist}">
					<tr>
						<td>${carrental.carRegNo}</td>
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
	</div>
</body>
</html>