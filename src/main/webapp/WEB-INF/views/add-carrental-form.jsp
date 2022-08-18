 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Car Rental</title>
<script type="text/javascript">
<%@include file="/WEB-INF/javascript/addcarrental.js"%>
 </script>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>

			<form:form action="add" method="post" modelAttribute="addcarrental" name="myForm">
			 <h1>Car Booking</h1>
			 <div class="form">
			 <table>
			 	<caption></caption>		
			<tr>
			<th></th>
			</tr>
			 <tbody>
				<tr>
                 		<td>   <label for="carRegno">Car RegistrationNo</label></td>
                    		<td>
                        <form:select path="carRegno" placeholder="Car RegistrationNo">
                            <c:forEach var="allcars" items="${allCars}">
                                <form:option value="${allcars.carRegno}"
                                    label="${allcars.carRegno}" />
                            </c:forEach>
                        </form:select>
                   </td>
                </tr>
	
				<tr>
						<td>	<label for="customerId">Customer Id</label></td>
							<td>
							<form:input path="customerId" placeholder="Customer Id"  title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"/>
						</td>
				</tr>
				<tr>
						<td>	<label for="fromDate">From Date</label></td>
					<td>
						<form:input path="fromDate" type="date" id="fromDate" name="fromDate" onblur="dateCheck();" onchange="dateCalculation()" min="2022-08-18" placeholder="From Date" />
				</td>
					</tr>
	
					<tr>
							<td>	<label for="dueDate">Due Date</label></td>
								<td>
							<form:input path="dueDate" type="date" id="dueDate" name="dueDate" onblur="dueDateCheck();" onchange="dateCalculation()" min="2022-08-19" placeholder="Due Date" />
						</td>
					</tr>
	
				<tr>
							<td>	<label for="retailFee">Retail Fee</label></td>
								<td>
							<form:input path="retailFee" id="retailFee" name="retailFee" onchange="dateCalculation(this.form)" placeholder="Retail Fee" />
						</td>
					</tr>
					<tr>
							<td>	<label for="fuelLevel">Fuel Level</label></td>
								<td>
                        <select name="fuelLevel"  required>
                        <option value="Full">Full</option>
                        <option value="half">half</option>
                        <option value="Low">Low</option>
                        </select>
                </td>
					</tr>
					
	
					<tr>
							<td>	<label for="workingCondition">Working Condition</label></td>
					  <td>
                        <select name="workingCondition" required>
                        <option value="Good">Good</option>
                        <option value="Average">Average</option>
                        <option value="Bad">Bad</option>
                        </select>
                </td>
                
					</tr>
	</tbody>
	</table>
		<form:button>Add New Car Registration</form:button>
	</div>
					
			</form:form>
</body>
</html>