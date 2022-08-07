<%@page import="com.chainsys.carrental.businesslogic.BusinessLogic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Return Car</title>
<style>
body {
    background-image:
        url("https://wallpaperaccess.com/full/1096643.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}</style>
<script type="text/javascript">
function calculation(){
	var payelapsed=document.getElementById("payElapsed").value;
	var totalfee =parseInt(payelapsed) *500;
	// document.getElementById("carFine").value = totalfee;
	
	var date1 = document.getElementById("fromDate").value;
	var date2 = document.getElementById("dueDate").value;
	var date3 = new Date(date1);
	var date4 = new Date(date2);
	var total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10); 
	document.getElementById("carFine").value = totalfee;
	document.getElementById("totalFee").value = parseInt(total)*1000+parseInt(totalfee);
	
	return parseInt(total);
}
/*function dateCalculation(){
	var date1 = document.getElementById("fromDate").value;
	var date2 = document.getElementById("dueDate").value;
	var date3 = new Date(date1);
	var date4 = new Date(date2);
	//var date1 = new Date("7/11/2010");
	//var date2 = new Date("8/11/2010");
	var total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10); 
	document.getElementById("totalFee").value = parseInt(total)*1000+parseInt(this.totalfee);
	return parseInt(total);
} */

</script>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="add" method="post" modelAttribute="addreturncar">
				<div>
					<label for="carRegno">Car RegNo</label>
					 <div>
                        <form:select path="carRegno">
                            <c:forEach var="allCars" items="${allCars}">
                                <form:option value="${allCars.carRegno}"
                                    label="${allCars.carRegno}" />
                            </c:forEach>
                        </form:select>
                    </div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
                        <form:select path="customerId">
                            <c:forEach var="allcustomers" items="${allCustomer}">
                                <form:option value="${allcustomers.customerId}"
                                    label="${allcustomers.customerId}" />
                            </c:forEach>
                        </form:select>
                    </div>
				</div>
				<div>
					<label for="fromDate">From Date</label>
					<div>
						<form:input path="fromDate"  type="date" id="fromDate" name="fromDate" onchange="calculation()"/>
					</div>
					</div>
					<div>
						<label for="dueDate">Due Date</label>
						<div>
							<form:input path="dueDate"  type="date" id="dueDate" name="dueDate" onchange="calculation()"/>
						</div>
					</div>
					<div>
						<label for="payElapsed">Pay Elapsed</label>
						<div>
							<form:input path="payElapsed" id="payElapsed" name="payElapsed" onchange="calculation()"/>
						</div>
					</div>
					<div>
						<label for="carFine">Car Fine</label>
						<div>
							<form:input path="carFine" id="carFine" name="carFine" onchange="calculation(this.form)" />
						</div>
					</div>
					<div>
						<label for="totalFee">Total Fee</label>
						<div>
							<form:input path="totalFee" id="totalFee" name="totalFee" onchange="calculation(this.form)"/>
						</div>
					</div>
					<div>
						<form:button>Add New Return Car</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>