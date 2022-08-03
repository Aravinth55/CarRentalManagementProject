<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Car</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatecarrental" method="post" modelAttribute="updatecarrental">
				<div>
					<label for="carRegno">Car RegNo</label>
					<div>
						<form:input path="carRegno" />
					</div>
				</div>
				<div>
					<label for=customerId>Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="fromDate">From Date</label>
					<div>
						<form:input path="fromDate" />
					</div>
					<div>
						<label for="dueDate">Due Date</label>
						<div>
							<form:input path="dueDate" type="date"/>
						</div>
					</div>
					<div>
						<label for="retailFee">Retail Fee</label>
						<div>
							<form:input path="retailFee" />
						</div>
					</div>
					<div>
						<label for="fuelLevel">Fuel Level</label>
						<div>
							<form:input path="fuelLevel"  type="date"/>
						</div>
					</div>
					<div>
						<label for="workingCondition">Working Condition</label>
						<div>
							<form:input path="workingCondition" />
						</div>
						<div>
							<form:button>Update Car Rental</form:button>
						</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>