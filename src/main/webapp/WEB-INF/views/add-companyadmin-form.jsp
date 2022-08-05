<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New ComapanyAdmin</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			 <form:form action="add" method="post"
                modelAttribute="addcompanyadmin">
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" />
					</div>
					</div>
						<div>
							<form:button>Add New CompanyAdmin</form:button>
						</div>
			</form:form>
		</div>
	</div>
</body>
</html>