<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Return Car</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
<script type="text/javascript">
<%@include file="/WEB-INF/javascript/addreturncar.js"%>
</script>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
			<form:form action="add" method="post" modelAttribute="addreturncar">
			 <h1>Car Returning</h1>
				<div class="form">
				<table>
					<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
				<tr>
					<td><label for="carRegno">Car RegNo</label></td>
					<td>
						<form:select path="carRegno" placeholder="Car RegNo">
							<c:forEach var="allCars" items="${allCars}">
								<form:option value="${allCars.carRegno}"
									label="${allCars.carRegno}" />
							</c:forEach>
						</form:select></td>
				</tr>
				<tr>
					<td><label for="customerId">Customer Id</label></td>
					<td>	<form:input path="customerId" placeholder="Customer Id"
							title="It should be Number Format" pattern="^[0-9]+$"
							required="true" /></td>
				</tr>
 			</tbody>
				</table>
				
					<form:button>Car Returning</form:button>
				
				
				</div>
			</form:form>
		
</body>
</html>