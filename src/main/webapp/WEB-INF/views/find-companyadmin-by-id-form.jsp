<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find CompanyAdmin By Id </title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="" method="get" modelAttribute="findcomadminbyid">
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" readonly="true" />
					</div>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>