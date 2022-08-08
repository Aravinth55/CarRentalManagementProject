<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Car Rental</title>
<script type="text/javascript">
function dateCalculation(){
	var date1 = document.getElementById("fromDate").value;
	var date2 = document.getElementById("dueDate").value;
	var date3 = new Date(date1);
	var date4 = new Date(date2);
	//var date1 = new Date("7/11/2010");
	//var date2 = new Date("8/11/2010");
	var total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10); 
	document.getElementById("retailFee").value = parseInt(total)*1000;
	return parseInt(total);
}

</script>
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
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="add" method="post" modelAttribute="addcarrental">
				<div>
                    <label for="carRegno">Car RegistrationNo</label>
                    <div>
                        <form:select path="carRegno" placeholder="Car RegistrationNo">
                            <c:forEach var="allcars" items="${allCars}">
                                <form:option value="${allcars.carRegno}"
                                    label="${allcars.carRegno}" />
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <!--  	<form:errors path="carRegno" cssClass="text-danger" /> -->
	
				<div>
					<label for="customerId">Customer Id</label>
					<div>
                        <form:select path="customerId" placeholder="Customer Id" >
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
						<form:input path="fromDate" type="date" id="fromDate" name="fromDate" onchange="dateCalculation()" placeholder="From Date" required="true"/>
					</div>
					</div>
	
					<div>
						<label for="dueDate">Due Date</label>
						<div>
							<form:input path="dueDate" type="date" id="dueDate" name="dueDate" onchange="dateCalculation()" placeholder="Due Date" required="true"/>
						</div>
					</div>
	
					<div>
						<label for="retailFee">Retail Fee</label>
						<div>
							<form:input path="retailFee" id="retailFee" name="retailFee" onchange="dateCalculation(this.form)" placeholder="Retail Fee" />
						</div>
					</div>
						<form:errors path="retailFee" cssClass="text-danger" />
					<div>
						<label for="fuelLevel">Fuel Level</label>
							<div>
						<form:radiobutton path="fuelLevel"  value="Full"/>Full
							<form:radiobutton path="fuelLevel"  value="Half"/>Half
							<form:radiobutton path="fuelLevel"  value="Low"/>Low
					</div>
					</div>
						<form:errors path="fuelLevel" cssClass="text-danger" />
	
					<div>
						<label for="workingCondition">Working Condition</label>
							<div>
						<form:radiobutton path="workingCondition"  value="Good"/>Good
							<form:radiobutton path="workingCondition"  value="Average"/>Average
							<form:radiobutton path="workingCondition"  value="Bad"/>Bad
					</div>
					</div>
						<form:errors path="workingCondition" cssClass="text-danger" />
	
					<div>
						<form:button>Add New Car Rental</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>