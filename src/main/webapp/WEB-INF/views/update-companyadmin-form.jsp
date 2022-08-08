<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update CompanyAamin</title>
<style type="text/css">
body {
    background-image: url("https://as2.ftcdn.net/v2/jpg/01/13/05/49/1000_F_113054950_ZICHXvV3MGY8nGoBuZYKZ9iMacgbsclI.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			 <form:form action="updatecomadmin" method="post"
                modelAttribute="updatecompanyadmin">
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" placeholder="User Id"/>
					</div>
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" placeholder="User Name"/>
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" placeholder="User Password"/>
					</div>
					</div>
						<div>
							<form:button>Update CompanyAdmin</form:button>
						</div>
			</form:form></div>
	</div>
</body>
</html>