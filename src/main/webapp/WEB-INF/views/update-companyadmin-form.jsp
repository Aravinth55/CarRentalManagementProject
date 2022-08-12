<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update CompanyAamin</title>
<style type="text/css">
body {
    background-image: url("https://cdn.wallpapersafari.com/60/8/fUDlIm.jpg");
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
		<div id="form" style="text-align:center ;margin-top:5%;">
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
	 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
</body>
</html>