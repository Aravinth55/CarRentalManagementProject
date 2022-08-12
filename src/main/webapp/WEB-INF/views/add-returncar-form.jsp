<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Return Car</title>
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
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
<script type="text/javascript">
	function calculation() {
		var payelapsed = document.getElementById("payElapsed").value;
		var totalfee = parseInt(payelapsed) * 500;
		// document.getElementById("carFine").value = totalfee;

		var date1 = document.getElementById("fromDate").value;
		var date2 = document.getElementById("dueDate").value;
		var date3 = new Date(date1);
		var date4 = new Date(date2);
		var total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10);
		document.getElementById("carFine").value = totalfee;
		document.getElementById("totalFee").value = parseInt(total) * 1000
				+ parseInt(totalfee);

		return parseInt(total);
	}
	<!--
</script>
<script type="text/javascript">
	-->

	const fromDate = localStorage.getItem('fromDate');
	const dueDate = localStorage.getItem('dueDate');

	document.getElementById('fromDate').textContent = fromDate;
	document.getElementById('dueDate').textContent = dueDate;
</script>
</head>
<body>
	<div id="root">
		<div id="form" style="text-align:center ;margin-top:5%;">
			<form:form action="add" method="post" modelAttribute="addreturncar">
				<div>
					<label for="carRegno">Car RegNo</label>
					<div>
						<form:select path="carRegno" placeholder="Car RegNo">
							<c:forEach var="allCars" items="${allCars}">
								<form:option value="${allCars.carRegno}"
									label="${allCars.carRegno}" />
							</c:forEach>
						</form:select>
					</div>
				</div>
				<%-- <form:errors path="carRegno" cssClass="text-danger" />  --%>

				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" placeholder="Customer Id"
							title="It should be Number Format" pattern="^[0-9]+$"
							required="true" />
					</div>
				</div>
				<div>
					<label for="fromDate">From Date</label>
					<div>
						<form:input path="fromDate" type="date" id="fromDate"
							name="fromDate" onchange="calculation()" placeholder="From Date"
							required="true" />
					</div>
				</div>

				<div>
					<label for="dueDate">Due Date</label>
					<div>
						<form:input path="dueDate" type="date" id="dueDate" name="dueDate"
							onchange="calculation()" placeholder="Due Date" required="true" />
					</div>
				</div>

				<div>
					<label for="payElapsed">Pay Elapsed</label>
					<div>
						<form:input path="payElapsed" id="payElapsed" name="payElapsed"
							onchange="calculation()" placeholder="Pay Elapsed"
							title="It should be Number Format" pattern="^[0-9]+$"
							required="true" />
					</div>
				</div>

				<div>
					<label for="carFine">Car Fine</label>
					<div>
						<form:input path="carFine" id="carFine" name="carFine"
							onchange="calculation(this.form)" placeholder="Car Fine" />
					</div>
				</div>
				<form:errors path="carFine" cssClass="text-danger" />
				<div>
					<label for="totalFee">Total Fee</label>
					<div>
						<form:input path="totalFee" id="totalFee" name="totalFee"
							onchange="calculation(this.form)" placeholder="Total Fee" />
					</div>
				</div>
				<form:errors path="totalFee" cssClass="text-danger" />
				<div>
					<form:button>Add New Return Car</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>