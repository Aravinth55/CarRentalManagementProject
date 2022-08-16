<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update CompanyAamin</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
	<form:form action="updatecomadmin" method="post"
		modelAttribute="updatecompanyadmin">
		<h1>Update CompanyAamin Form</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label for="userId">User Id</label></td>

						<td><form:input path="userId" placeholder="User Id" /></td>
					</tr>
					<tr>
						<td><label for="userName">User Name</label></td>
						<td><form:input path="userName" placeholder="User Name" /></td>
					</tr>
					<tr>
						<td><label for="userPassword">User Password</label></td>
						<td><form:input path="userPassword"
								placeholder="User Password" /></td>
					</tr>
				</tbody>
			</table>
			<form:button>Update CompanyAdmin</form:button>
		</div>
	</form:form>
	<div>
		<h3>
			<a href="/home/hello">Back To MainPage</a>
		</h3>
	</div>
</body>
</html>