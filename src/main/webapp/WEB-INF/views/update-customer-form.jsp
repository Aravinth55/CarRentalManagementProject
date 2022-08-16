<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form:form action="updatecus" method="post"
		modelAttribute="updatecustomer">
		<h1>Update Customer Registration</h1>
		<div class="form">
			<table>
				<tbody>
					<tr>
						<td><label for="customerId">Customer Id</label></td>
						<td><form:input path="customerId" placeholder="Customer Id" />
						</td>
					</tr>
					<tr>
						<td><label for="customerName">Customer Name</label></td>
						<td><form:input path="customerName"
								placeholder="Customer Name" title="It should be Only Alphabet" required="true"/></td>
					</tr>
<%-- 					<form:errors path="customerName" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="customerPassword">Customer Password</label></td>
						<td><form:input path="customerPassword"
								placeholder="Customer Password" type="password" required="true"/></td>
					</tr>
<%-- 					<form:errors path="customerPassword" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="address">Address</label></td>
						<td><form:input path="address" placeholder="Address"  required="true"/></td>
					</tr>
<%-- 					<form:errors path="address" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="mobileNo">Mobile No</label></td>
						<td><form:input path="mobileNo" placeholder="Mobile No"
								title="It should be Number Format" pattern="^[0-9]+$"
								required="true" /></td>
					</tr>
<%-- 					<form:errors path="mobileNo" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="gender">Gender</label></td>
						<td>
                        <select name="gender">
                        <option>--Gender--</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                        </select>
                </td>
					</tr>
<%-- 					<form:errors path="gender" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="bloodGroup">Blood Group</label></td>
						<td><form:input path="bloodGroup" placeholder="Blood Group" title="It should be Only Alphabet"  required="true"/>
						</td>
					</tr>
<%-- 					<form:errors path="bloodGroup" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="personType">Person Type</label></td>
						<td>
                        <select name="personType">
                        <option>--Person Type--</option>
                        <option value="Customer">Customer</option>
                        <option value="Owner">Owner</option>
                        </select>
                </td>
					</tr>
<%-- 					<form:errors path="personType" cssClass="text-danger" />
 --%>
					<tr>
						<td><label for="joiningDate">Joining Date</label></td>
						
						<td><form:input path="joiningDate" type="date"
								placeholder="Joining Date"  required="true"/></td>
					</tr>
				</tbody>
			</table>
			<form:button>Update Customer</form:button>
		</div>
		
	</form:form>
</body>
</html>



