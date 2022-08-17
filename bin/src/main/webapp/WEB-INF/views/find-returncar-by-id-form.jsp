<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find ReturnCar By Id</title>
<style type="text/css">
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
	<div id="root">
		<div id="form" style="text-align:center ;margin-top:5%;">
			<form:form action="" method="get" modelAttribute="findreturncarbyid">
				<div>
					<label for="carRegno">Car RegNo</label>
					<div>
						<form:input path="carRegno" readonly="true" />
					</div>
				</div>
				<div>
					<label for=customerId>Customer Id</label>
					<div>
						<form:input path="customerId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="fromDate">From Date</label>
					<div>
						<form:input path="fromDate" readonly="true" />
					</div>
					</div>
					<div>
						<label for="dueDate">Due Date</label>
						<div>
							<form:input path="dueDate" readonly="true" />
						</div>
					</div>
					<div>
						<label for="payElapsed">Pay Elapsed</label>
						<div>
							<form:input path="payElapsed" readonly="true" />
						</div>
					</div>
					<div>
						<label for="carFine">Car Fine</label>
						<div>
							<form:input path="carFine" readonly="true" />
						</div>
					</div>
					<div>
						<label for="totalFee">Total Fee</label>
						<div>
							<form:input path="totalFee" readonly="true" />
						</div>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>