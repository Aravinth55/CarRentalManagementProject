<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Car</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form:form action="updatecar" method="post" modelAttribute="updatecar">
		<h1>Update Car Registration</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label for="carRegno">Car RegNo</label></td>
						<td><form:input path="carRegno" placeholder="Car Regno" required="true"/></td>
					</tr>
<%-- 					<form:errors path="carRegno" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="ownerId">Owner Id</label></td>
						<td><form:input path="ownerId" placeholder="Owner Id"
								title="It should be Number Format" pattern="^[0-9]+$"
								required="true" /></td>
					</tr>
					<tr>

						<td><label for="carMake">Car Make</label></td>

						<td><form:input path="carMake" placeholder="Car Make"  title="It should be Only Alphabet" required="true"/></td>
<%-- 						<form:errors path="carMake" cssClass="text-danger" />
 --%>					<tr>
						<td><label for="carModel">Car Model</label></td>
						<td><form:input path="carModel" placeholder="Car Model"  title="It should be Only Alphabet" required="true"/></td>
					</tr>
<!-- 	 -->				<form:errors path="carModel" cssClass="text-danger"  title="It should be Only Alphabet" required="true"/>

					<tr>
						<td><label for="carColour">Car Colour</label></td>
						<td><form:input path="carColour" placeholder="Car Colour"  title="It should be Only Alphabet" required="true"/>
						</td>
					</tr>
<%-- 					<form:errors path="carColour" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="fuelType">Fuel Type</label></td>
						<td><form:input path="fuelType" placeholder="FuelType"  title="It should be Only Alphabet" required="true"/></td>
					</tr>
<%-- 					<form:errors path="fuelType" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="carCapacity">Car Capacity</label></td>

						<td><form:input path="carCapacity" placeholder="Car Capacity"
								title="It should be Number Format" pattern="^[0-9]+$"
								required="true" /></td>
					</tr>
					<tr>
						<td><label for="carAvailable">Car Available</label></td>

						<td><form:input path="carAvailable"
								placeholder="Car Available"  title="It should be Only Alphabet" required="true"/></td>
					</tr>
<%-- 					<form:errors path="carAvailable" cssClass="text-danger" />
 --%>				</tbody>
			</table>

			<form:button>Add New CarRegistration</form:button>

		</div>
	</form:form>
		<h3>
			<a href="/home/hello">Back To MainPage</a>
		</h3>
</body>
</html>